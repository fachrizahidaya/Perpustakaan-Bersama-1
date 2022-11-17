import {
  Flex,
  Box,
  FormControl,
  FormLabel,
  Input,
  Checkbox,
  Stack,
  Link,
  Button,
  Heading,
  Text,
  useColorModeValue,
  useDisclosure,
  useColorMode
  
} from "@chakra-ui/react";
import { useRef } from "react";
import { useDispatch, useSelector } from "react-redux";
import Axios  from "axios";
import Swal from "sweetalert2";
import {login} from "../redux/userSlice"
const url = "http://localhost:2000/admin"

export default function LoginAdmin() {
  const { NIM, username } = useSelector((state) => state.userSlice.value);
  const { isOpen, onToggle, onClose, onOpen } = useDisclosure();
  const { colorMode, toggleColorMode } = useColorMode();
  const tokenlocalstorage = localStorage.getItem("token");
  const dispatch = useDispatch();
  const inputNIM = useRef("");
  const inputPASS = useRef("");

  const onLogin = async () => {
    try {
        const user = {
            password: inputPASS.current.value,
            NIM: inputNIM.current.value,
        };

        // console.log(user)

        const result = await Axios.post(url, user);
    
        dispatch(login({
            NIM: result.data.isUserExist.NIM,
            username: result.data.isUserExist.username,
            email: result.data.isUserExist.email,
        }));

        localStorage.setItem("token", result.data.token);
    
    } catch (err) {
        Swal.fire({
            icon: 'error',
            title: 'Oops...',
            text: `${err.response.data}`,
            timer: 1000,
            customClass: {
                container: 'my-swal'
            }
        })
    }}

  return (
    <Flex
      minH={"100vh"}
      align={"center"}
      justify={"center"}
      bg={useColorModeValue("gray.50", "gray.800")}
    >
      <Stack spacing={8} mx={"auto"} maxW={"lg"} py={12} px={6}>
        <Stack align={"center"}>
          <Heading fontSize={"4xl"}>Sign in to your account</Heading>
          <Text fontSize={"lg"} color={"gray.600"}>
            to enjoy all of our cool <Link color={"blue.400"}>features</Link> ✌️
          </Text>
        </Stack>
        <Box
          rounded={"lg"}
          bg={useColorModeValue("white", "gray.700")}
          boxShadow={"lg"}
          p={8}
        >
          <Stack spacing={4}>
            <FormControl id="email">
              <FormLabel>Email address</FormLabel>
              <Input type="email" />
            </FormControl>
            <FormControl id="password">
              <FormLabel>Password</FormLabel>
              <Input type="password" />
            </FormControl>
            <Stack spacing={10}>
              <Stack
                direction={{ base: "column", sm: "row" }}
                align={"start"}
                justify={"space-between"}
              >
                <Checkbox>Remember me</Checkbox>
                <Link color={"blue.400"}>Forgot password?</Link>
              </Stack>
              <Button
                bg={"blue.400"}
                color={"white"}
                _hover={{
                  bg: "blue.500",
                }}
              >
                Sign in
              </Button>
            </Stack>
          </Stack>
        </Box>
      </Stack>
    </Flex>
  );
}
