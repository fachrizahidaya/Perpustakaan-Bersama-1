import {
  Box,
  chakra,
  Flex,
  SimpleGrid,
  Stat,
  StatLabel,
  StatNumber,
  useColorModeValue,
  useDisclosure,
} from "@chakra-ui/react";
import { BsPerson } from "react-icons/bs";
import { FiServer } from "react-icons/fi";
import { useDispatch, useSelector } from "react-redux";
import { CheckIcon } from "@chakra-ui/icons";

function StatsCard(props) {
  const { title, stat, icon } = props;

  return (
    <Stat
      px={{ base: 2, md: 4 }}
      py={"5"}
      shadow={"xl"}
      border={"1px solid"}
      borderColor={useColorModeValue("gray.800", "gray.500")}
      rounded={"lg"}
    >
      <Flex justifyContent={"space-between"}>
        <Box pl={{ base: 2, md: 4 }}>
          <StatLabel fontWeight={"medium"} isTruncated>
            {title}
          </StatLabel>
          <StatNumber fontSize={"2xl"} fontWeight={"medium"}>
            {stat}
          </StatNumber>
        </Box>
        <Box
          my={"auto"}
          color={useColorModeValue("gray.800", "gray.200")}
          alignContent={"center"}
        >
          {icon}
        </Box>
      </Flex>
    </Stat>
  );
}

export default function StatsComp() {
  // const dispatch = useDispatch();
  const data = useSelector((state) => state.nameSlice.value);
  const data1 = useSelector((state) => state.listSlice.value);
  const data2 = useSelector((state) => state.loanAdminSlice.value);
  const data3 = useSelector((state) => state.loanSlice.value);
  const { isOpen, onOpen, onClose } = useDisclosure();

  return (
    <Box maxW="7xl" mx={"auto"} pt={5} px={{ base: 2, sm: 12, md: 17 }}>
      <chakra.h1
        textAlign={"center"}
        fontSize={"4xl"}
        py={10}
        fontWeight={"bold"}
      ></chakra.h1>

      <SimpleGrid columns={{ base: 1, md: 3 }} spacing={{ base: 5, lg: 8 }}>
        {/* <Button onClick={onOpen} variant="ghost"> */}
        <StatsCard
          title={"Users"}
          stat={data.length}
          icon={<BsPerson size={"3em"} />}
        />

        <StatsCard
          title={"Books"}
          stat={data1.length}
          icon={<FiServer size={"3em"} />}
        ></StatsCard>

        <StatsCard
          title={"Transactions"}
          stat={data2.length}
          icon={<CheckIcon />}
        />
      </SimpleGrid>
    </Box>
  );
}
