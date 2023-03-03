import { useEffect, useRef } from "react";
import React from "react";
import Axios from "axios";
import { useDispatch, useSelector } from "react-redux";
import { syncData } from "../redux/admin/listSlice";
import {
  Image,
  Button,
  Box,
  Text,
  Icon,
  Flex,
  Center,
  TableContainer,
  Table,
  TableCaption,
  Thead,
  Tr,
  Th,
  Tbody,
  Td,
  Tfoot,
  Stack,
  Menu,
  MenuButton,
  Avatar,
  MenuList,
  MenuDivider,
  MenuItem,
  useColorModeValue,
  useColorMode,
  useDisclosure,
  Heading,
} from "@chakra-ui/react";

import { syncName } from "../redux/nameSlice";
import { EditIcon, MoonIcon, SunIcon } from "@chakra-ui/icons";
import { useNavigate } from "react-router-dom";

export const UsersTable = () => {
  const dispatch = useDispatch();
  const data1 = useSelector((state) => state.nameSlice.value);
  const { colorMode, toggleColorMode } = useColorMode();

  const getUser = async () => {
    try {
      const res = await Axios.get(`http://localhost:2000/user/allUser`);
      dispatch(syncName(res.data));
    } catch (err) {
      console.log(err);
    }
  };

  useEffect(() => {
    getUser();
  }, []);
  return (
    <div>
      <Stack mt="20px" mb="20px" ml="20px" mr="20px">
        <Box m="20px">
          <TableContainer>
            <Table variant="striped" colorScheme="blue">
              <Thead>
                <Tr>
                  <Th>NIM</Th>
                  <Th>Username</Th>
                  <Th>Email</Th>
                  <Th>Password</Th>
                </Tr>
              </Thead>
              {data1.map((item) => {
                return (
                  <Tbody>
                    <Tr>
                      <Td>{item.NIM}</Td>
                      <Td>{item.username}</Td>
                      <Td>{item.email}</Td>
                      <Td>{item.password}</Td>
                    </Tr>
                  </Tbody>
                );
              })}
            </Table>
          </TableContainer>
        </Box>
      </Stack>
    </div>
  );
};
