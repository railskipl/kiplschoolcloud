/*
 * Copyright (C) Tildeslash Ltd. All rights reserved.
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Affero General Public License version 3.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Affero General Public License for more details.
 *
 * You should have received a copy of the GNU Affero General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 *
 * In addition, as a special exception, the copyright holders give
 * permission to link the code of portions of this program with the
 * OpenSSL library under certain conditions as described in each
 * individual source file, and distribute linked combinations
 * including the two.
 *
 * You must obey the GNU Affero General Public License in all respects
 * for all of the code used other than OpenSSL.  
 */


#ifndef NUMBERFORMATEXCEPTION_INCLUDED
#define NUMBERFORMATEXCEPTION_INCLUDED
#include <exceptions/Exception.h>


/**
 * Thrown to indicate that an attempt to convert a string to one of the 
 * numeric types failed, because the string does not have the appropriate
 * format.
 * @see Exception.h
 *
 * @author http://www.tildeslash.com/
 * @see http://www.mmonit.com/
 * @file
 */
extern Exception_T NumberFormatException;


#endif