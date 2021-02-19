//
//  TwisterCoreWrapper.cc
//  CTwisterCore
//
//  Created by Amr Aboelela on 2/18/21.
//

#include "bitcoinrpc.h"

#pragma mark - Static functions

extern "C" long twisterCoreGetPosts(char *username, long usernameLength, long count,void **result, long *resultLength) {
//}
//extern "C" long levelDBItemGet(void *db, char *key, long keyLength, void **data, long *dataLength) {
    /*leveldb::Slice k = leveldb::Slice(key, keyLength);
    leveldb::ReadOptions *readOptionsPtr = &readOptions;
    std::string v_string;
    leveldb::Status status = ((leveldb::DB *)db)->Get(*readOptionsPtr, k, &v_string);
    if (status.ok()) {
        *data = CopyString(v_string);
        *dataLength = v_string.size();
        return 0;
    } else {
        return -1;
    }*/
    return 0;
}

/*
static leveldb::ReadOptions readOptions;
static leveldb::WriteOptions writeOptions;

static char *CopyString(const std::string& str) {
    char *result = reinterpret_cast<char*>(malloc(sizeof(char) * str.size()));
    memcpy(result, str.data(), sizeof(char) * str.size());
    return result;
}

#pragma mark - Database

extern "C" void *levelDBOpen(char *path) {
    
    leveldb::Options options;
    options.create_if_missing = true;
    options.paranoid_checks = false;
    options.error_if_exists = false;
#if defined(__linux)
    //printf("levelDBOpen in Linux\n");
#else
    //printf("levelDBOpen in iOS\n");
    options.compression = leveldb::kSnappyCompression;
#endif
    
    readOptions.fill_cache = true;
    writeOptions.sync = false;
    leveldb::DB *db;
    leveldb::Status status = leveldb::DB::Open(options, path, &db);
    
    if (!status.ok()) {
        printf("Problem creating LevelDB database: %s\n", status.ToString().c_str());
        char *lockStr = "/LOCK";
        char *lockPath;
        if ((lockPath = (char *)malloc(strlen(path)+strlen(lockStr)+1)) != NULL) {
            lockPath[0] = '\0';   // ensures the memory is an empty string
            strcat(lockPath,path);
            strcat(lockPath,lockStr);
        } else {
            printf("malloc failed!\n");
            // exit?
        }
        long fd = open(lockPath, O_RDWR | O_CREAT, 0644);
        if (LockOrUnlock(fd, false) != -1) {
            printf("Was able to unlock the databse\n");
        } else {
            printf("Couldn't unlock the databse\n");
            return NULL;
        }
        status = RepairDB(path, options);
        if (status.ok()) {
            printf("Was able to repair databse\n");
        } else {
            printf("Couldn't repair databse\n");
            return NULL;
        }
        status = leveldb::DB::Open(options, path, &db);
        if (!status.ok()) {
            printf("Problem creating LevelDB database: %s\n", status.ToString().c_str());
            return NULL;
        }
    }
    return db;
}*/
