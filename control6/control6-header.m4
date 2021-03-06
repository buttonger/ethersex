dnl
dnl   Copyright (c) 2008,2009 by Christian Dietrich <stettberger@dokucode.de>
dnl  
dnl   This program is free software; you can redistribute it and/or modify
dnl   it under the terms of the GNU General Public License version 2 or later
dnl   as published by the Free Software Foundation.
dnl  
dnl   This program is distributed in the hope that it will be useful,
dnl   but WITHOUT ANY WARRANTY; without even the implied warranty of
dnl   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
dnl   GNU General Public License for more details.
dnl  
dnl   You should have received a copy of the GNU General Public License
dnl   along with this program; if not, write to the Free Software
dnl   Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
dnl  
dnl   For more information on the GPL, please go to:
dnl   http://www.gnu.org/copyleft/gpl.html
dnl
divert(-1)
define(`C6_HEADER', `divert(0)$*
divert(-1)')
define(`ECMD_GLOBAL', `ifdef(`C6_ECMD_USED', `', `define(`C6_ECMD_USED')C6_HEADER(`#define C6_ECMD_USED 1')')')
define(`CLOCK_USED', `ifdef(`C6_CLOCK_USED', `', `define(`C6_CLOCK_USED')C6_HEADER(`#define C6_CLOCK_USED 1')')')
define(`CLOCK_SEC', `CLOCK_USED()')
define(`CLOCK_MIN', `CLOCK_USED()')
define(`CLOCK_HOUR', `CLOCK_USED()')
define(`CLOCK_DAY', `CLOCK_USED()')
define(`CLOCK_MONTH', `CLOCK_USED()')
define(`CLOCK_DOW', `CLOCK_USED()')
define(`CLOCK_YEAR', `CLOCK_USED()')

define(`ONCE', `CLOCK_USED()')
divert(0)
/* This file was automatically generated by control6-header.m4 and control6.src */

#ifndef _CONTROL6_H
#define _CONTROL6_H

#define C6_TYPE_uint8_t		0
#define C6_TYPE_int8_t		1
#define C6_TYPE_uint16_t	2
#define C6_TYPE_int16_t		3

struct c6_vario_type {
  uint8_t type;

  union {
    uint8_t d_uint8_t;
    int8_t d_int8_t;
    uint16_t d_uint16_t;
    int16_t d_int16_t;
  } data;
};

void control6_init(void);
void control6_run(void);

uint8_t control6_set(const char *varname, struct c6_vario_type value);
uint8_t control6_get(const char *varname, struct c6_vario_type *value);

divert(10)#endif /* CONTROL6 */
divert(-1)
