/*******************************************************************************************
 *	Copyright (c) 2016, zzg.zhou(11039850@qq.com)
 * 
 *  Monalisa is free software: you can redistribute it and/or modify
 *	it under the terms of the GNU Lesser General Public License as published by
 *	the Free Software Foundation, either version 3 of the License, or
 *	(at your option) any later version.

 *	This program is distributed in the hope that it will be useful,
 *	but WITHOUT ANY WARRANTY; without even the implied warranty of
 *	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *	GNU Lesser General Public License for more details.

 *	You should have received a copy of the GNU Lesser General Public License
 *	along with this program.  If not, see <http://www.gnu.org/licenses/>.
 *******************************************************************************************/
package com.tsc9526.monalisa.tools.cache;

import java.util.concurrent.locks.ReadWriteLock;

/**
 * 
 * @author zzg.zhou(11039850@qq.com)
 */
public interface Cache {

	String getId();

	int getSize();

	void putObject(Object key, Object value,long ttlInSeconds);

	Object getObject(Object key);

	Object removeObject(Object key);

	void clear();

	ReadWriteLock getReadWriteLock();

}
