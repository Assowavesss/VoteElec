/****************************************************************************
** Meta object code from reading C++ file 'vesqlquerymodel.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.15.2)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include <memory>
#include "../app/res/vesqlquerymodel.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'vesqlquerymodel.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.15.2. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_VESqlQueryModel_t {
    QByteArrayData data[14];
    char stringdata0[150];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_VESqlQueryModel_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_VESqlQueryModel_t qt_meta_stringdata_VESqlQueryModel = {
    {
QT_MOC_LITERAL(0, 0, 15), // "VESqlQueryModel"
QT_MOC_LITERAL(1, 16, 11), // "getElection"
QT_MOC_LITERAL(2, 28, 0), // ""
QT_MOC_LITERAL(3, 29, 12), // "getCandidate"
QT_MOC_LITERAL(4, 42, 12), // "electionName"
QT_MOC_LITERAL(5, 55, 8), // "isLogged"
QT_MOC_LITERAL(6, 64, 10), // "numElector"
QT_MOC_LITERAL(7, 75, 8), // "password"
QT_MOC_LITERAL(8, 84, 8), // "hasVoted"
QT_MOC_LITERAL(9, 93, 12), // "nameElection"
QT_MOC_LITERAL(10, 106, 4), // "vote"
QT_MOC_LITERAL(11, 111, 11), // "idCandidate"
QT_MOC_LITERAL(12, 123, 11), // "elctionName"
QT_MOC_LITERAL(13, 135, 14) // "getParticipate"

    },
    "VESqlQueryModel\0getElection\0\0getCandidate\0"
    "electionName\0isLogged\0numElector\0"
    "password\0hasVoted\0nameElection\0vote\0"
    "idCandidate\0elctionName\0getParticipate"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_VESqlQueryModel[] = {

 // content:
       8,       // revision
       0,       // classname
       0,    0, // classinfo
       6,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // methods: name, argc, parameters, tag, flags
       1,    0,   44,    2, 0x02 /* Public */,
       3,    1,   45,    2, 0x02 /* Public */,
       5,    2,   48,    2, 0x02 /* Public */,
       8,    2,   53,    2, 0x02 /* Public */,
      10,    3,   58,    2, 0x02 /* Public */,
      13,    1,   65,    2, 0x02 /* Public */,

 // methods: parameters
    QMetaType::Void,
    QMetaType::Void, QMetaType::QString,    4,
    QMetaType::Bool, QMetaType::QString, QMetaType::QString,    6,    7,
    QMetaType::Bool, QMetaType::QString, QMetaType::QString,    9,    6,
    QMetaType::Void, QMetaType::QString, QMetaType::Int, QMetaType::QString,    6,   11,   12,
    QMetaType::Void, QMetaType::QString,    6,

       0        // eod
};

void VESqlQueryModel::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<VESqlQueryModel *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->getElection(); break;
        case 1: _t->getCandidate((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        case 2: { bool _r = _t->isLogged((*reinterpret_cast< const QString(*)>(_a[1])),(*reinterpret_cast< const QString(*)>(_a[2])));
            if (_a[0]) *reinterpret_cast< bool*>(_a[0]) = std::move(_r); }  break;
        case 3: { bool _r = _t->hasVoted((*reinterpret_cast< const QString(*)>(_a[1])),(*reinterpret_cast< const QString(*)>(_a[2])));
            if (_a[0]) *reinterpret_cast< bool*>(_a[0]) = std::move(_r); }  break;
        case 4: _t->vote((*reinterpret_cast< const QString(*)>(_a[1])),(*reinterpret_cast< int(*)>(_a[2])),(*reinterpret_cast< const QString(*)>(_a[3]))); break;
        case 5: _t->getParticipate((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        default: ;
        }
    }
}

QT_INIT_METAOBJECT const QMetaObject VESqlQueryModel::staticMetaObject = { {
    QMetaObject::SuperData::link<QSqlQueryModel::staticMetaObject>(),
    qt_meta_stringdata_VESqlQueryModel.data,
    qt_meta_data_VESqlQueryModel,
    qt_static_metacall,
    nullptr,
    nullptr
} };


const QMetaObject *VESqlQueryModel::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *VESqlQueryModel::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_VESqlQueryModel.stringdata0))
        return static_cast<void*>(this);
    return QSqlQueryModel::qt_metacast(_clname);
}

int VESqlQueryModel::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QSqlQueryModel::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 6)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 6;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 6)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 6;
    }
    return _id;
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
