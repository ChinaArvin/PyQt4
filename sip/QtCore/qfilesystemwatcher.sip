// qfilesystemwatcher.sip generated by MetaSIP on Fri Feb 10 10:35:11 2012
//
// This file is part of the QtCore Python extension module.
//
// Copyright (c) 2011 Riverbank Computing Limited <info@riverbankcomputing.com>
// 
// This file is part of PyQt.
// 
// This file may be used under the terms of the GNU General Public
// License versions 2.0 or 3.0 as published by the Free Software
// Foundation and appearing in the files LICENSE.GPL2 and LICENSE.GPL3
// included in the packaging of this file.  Alternatively you may (at
// your option) use any later version of the GNU General Public
// License if such license has been publicly approved by Riverbank
// Computing Limited (or its successors, if any) and the KDE Free Qt
// Foundation. In addition, as a special exception, Riverbank gives you
// certain additional rights. These rights are described in the Riverbank
// GPL Exception version 1.1, which can be found in the file
// GPL_EXCEPTION.txt in this package.
// 
// If you are unsure which license is appropriate for your use, please
// contact the sales department at sales@riverbankcomputing.com.
// 
// This file is provided AS IS with NO WARRANTY OF ANY KIND, INCLUDING THE
// WARRANTY OF DESIGN, MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.


%If (Qt_4_2_0 -)

class QFileSystemWatcher : QObject
{
%TypeHeaderCode
#include <qfilesystemwatcher.h>
%End

public:
    QFileSystemWatcher(QObject *parent /TransferThis/ = 0);
    QFileSystemWatcher(const QStringList &paths, QObject *parent /TransferThis/ = 0);
    virtual ~QFileSystemWatcher();
    void addPath(const QString &file);
    void addPaths(const QStringList &files);
    QStringList directories() const;
    QStringList files() const;
    void removePath(const QString &file);
    void removePaths(const QStringList &files);

signals:
    void directoryChanged(const QString &path);
    void fileChanged(const QString &path);
};

%End
