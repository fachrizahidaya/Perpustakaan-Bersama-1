import {
  Button,
  Flex,
  FormControl,
  FormLabel,
  Heading,
  Input,
  Stack,
  useColorModeValue,
  Textarea,
  HStack,
} from "@chakra-ui/react";
import Axios from "axios";
import { useRef, useState } from "react";
import { useSelector } from "react-redux";
import { useParams } from "react-router-dom";

export default function CreateComp() {
  const inputTitle = useRef("");
  const inputAuthor = useRef("");
  const inputPublisher = useRef("");
  const inputGenre = useRef("");
  const inputAbstract = useRef("");
  const inputImages = useRef("");

  const onCreate = async () => {
    try {
      const addBook = {
        Title: inputTitle.current.value,
        Author: inputAuthor.current.value,
        Publisher: inputPublisher.current.value,
        Genre: inputGenre.current.value,
        Abstract: inputAbstract.current.value,
        Images: inputImages.current.value,
      };

      const res = await Axios.post(
        `http://localhost:2000/book/create`,
        addBook
      );
    } catch (err) {
      console.log(err);
    }
  };

  return (
    <Flex
      minH={"100vh"}
      align={"center"}
      justify={"center"}
      bg={useColorModeValue("white.50", "white.800")}
    >
      <Stack
        spacing={4}
        w={"full"}
        maxW={"md"}
        bg={useColorModeValue("white", "white.700")}
        rounded={"xl"}
        boxShadow={"lg"}
        p={6}
        my={12}
      >
        <Heading
          lineHeight={1.1}
          fontSize={{ base: "2xl", sm: "3xl" }}
          textAlign="center"
        >
          Add Book Here
        </Heading>
        <Flex></Flex>
        <Flex>
          <FormControl id="title" isRequired>
            <FormLabel>Title</FormLabel>
            <Input
              _placeholder={{ color: "gray.500" }}
              type="text"
              ref={inputTitle}
            />
          </FormControl>
        </Flex>
        <FormControl id="author" isRequired>
          <FormLabel>Author</FormLabel>
          <Input
            _placeholder={{ color: "gray.500" }}
            type="author"
            ref={inputAuthor}
          />
        </FormControl>
        <FormControl id="publisher" isRequired>
          <FormLabel>Publisher</FormLabel>
          <Input
            _placeholder={{ color: "gray.500" }}
            type="publisher"
            ref={inputPublisher}
          />
        </FormControl>
        <FormControl id="genre">
          <FormLabel>Genre</FormLabel>
          <Input
            _placeholder={{ color: "gray.500" }}
            type="genre"
            ref={inputGenre}
          />
        </FormControl>
        <FormControl id="abstract" isRequired>
          <FormLabel>Abstract</FormLabel>
          <Textarea _placeholder={{ color: "gray.500" }} ref={inputAbstract} />
        </FormControl>
        <HStack>
          <Button
          // onClick={handleUpload}
          >
            Upload
          </Button>
        </HStack>
        <Stack spacing={6} direction={["column", "row"]}>
          <Button
            bg={"blue.400"}
            color={"white"}
            w="full"
            _hover={{
              bg: "blue.500",
            }}
            onClick={onCreate}
          >
            Submit
          </Button>
        </Stack>
      </Stack>
    </Flex>
  );
}
