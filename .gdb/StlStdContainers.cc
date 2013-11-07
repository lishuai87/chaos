/*
 *
 * StlStdContainers, helper file for GDB stl functions
 * Copyright (C) 2000 Gilad Mishne
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
 *
 */

#include <iostream>
#include <stdio.h>
#include <list>
#include <vector>
#include <deque>
#include <stack>
#include <set>
#include <map>
#include <ext/hash_map>
#include <ext/hash_set>

using namespace std;
using namespace __gnu_cxx;

struct eqstr {
	bool operator()(const char* s1, const char* s2) const { return strcmp(s1, s2) == 0; }
};

struct hashf {
	size_t operator()(const void* pv) const { return size_t(pv); }
};

typedef vector<void*> TGenericStlVoidPtrVector;
typedef list<void*> TGenericStlVoidPtrList;
typedef deque<void*> TGenericStlVoidPtrDeque;
typedef stack<void*> TGenericStlVoidPtrStack;
typedef set<void*> TGenericStlVoidPtrSet;
typedef map<const char*, void*> TGenericStlVoidPtrMap;
typedef multimap<const char*, void*> TGenericStlVoidPtrMultiMap;
typedef hash_set<void*, hashf> TGenericStlVoidPtrHashSet;
typedef hash_map<const char*, void*, hash<const char*>, eqstr> TGenericStlVoidPtrHashMap;
typedef hash_multimap<const char*, void*, hash<const char*>, eqstr> TGenericStlVoidPtrHashMultiMap;
typedef _Rb_tree_node_base TStlTreeNodeBase;

_Hashtable_node<void *> _StlVoidPtrHashNode;
_List_node<void* > _StlVoidPtrListNode;
