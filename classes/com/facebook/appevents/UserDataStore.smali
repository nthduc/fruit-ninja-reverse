.class public Lcom/facebook/appevents/UserDataStore;
.super Ljava/lang/Object;
.source "UserDataStore.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field public static final CITY:Ljava/lang/String; = "ct"

.field public static final COUNTRY:Ljava/lang/String; = "country"

.field private static final DATA_SEPARATOR:Ljava/lang/String; = ","

.field public static final DATE_OF_BIRTH:Ljava/lang/String; = "db"

.field public static final EMAIL:Ljava/lang/String; = "em"

.field public static final FIRST_NAME:Ljava/lang/String; = "fn"

.field public static final GENDER:Ljava/lang/String; = "ge"

.field private static final INTERNAL_USER_DATA_KEY:Ljava/lang/String; = "com.facebook.appevents.UserDataStore.internalUserData"

.field public static final LAST_NAME:Ljava/lang/String; = "ln"

.field private static final MAX_NUM:I = 0x5

.field public static final PHONE:Ljava/lang/String; = "ph"

.field public static final STATE:Ljava/lang/String; = "st"

.field private static final TAG:Ljava/lang/String; = "UserDataStore"

.field private static final USER_DATA_KEY:Ljava/lang/String; = "com.facebook.appevents.UserDataStore.userData"

.field public static final ZIP:Ljava/lang/String; = "zp"

.field private static final externalHashedUserData:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final internalHashedUserData:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 50
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/facebook/appevents/UserDataStore;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 53
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/facebook/appevents/UserDataStore;->externalHashedUserData:Ljava/util/concurrent/ConcurrentHashMap;

    .line 55
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/facebook/appevents/UserDataStore;->internalHashedUserData:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 3

    const-class v0, Lcom/facebook/appevents/UserDataStore;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    .line 43
    :cond_a
    :try_start_a
    sget-object v0, Lcom/facebook/appevents/UserDataStore;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_c} :catch_d

    return-object v0

    :catch_d
    move-exception v0

    const-class v2, Lcom/facebook/appevents/UserDataStore;

    invoke-static {v0, v2}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method static synthetic access$100()V
    .registers 2

    const-class v0, Lcom/facebook/appevents/UserDataStore;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 43
    :cond_9
    :try_start_9
    invoke-static {}, Lcom/facebook/appevents/UserDataStore;->initAndWait()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception v0

    const-class v1, Lcom/facebook/appevents/UserDataStore;

    invoke-static {v0, v1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200()Landroid/content/SharedPreferences;
    .registers 3

    const-class v0, Lcom/facebook/appevents/UserDataStore;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    .line 43
    :cond_a
    :try_start_a
    sget-object v0, Lcom/facebook/appevents/UserDataStore;->sharedPreferences:Landroid/content/SharedPreferences;
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_c} :catch_d

    return-object v0

    :catch_d
    move-exception v0

    const-class v2, Lcom/facebook/appevents/UserDataStore;

    invoke-static {v0, v2}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method static synthetic access$300()Ljava/lang/String;
    .registers 3

    const-class v0, Lcom/facebook/appevents/UserDataStore;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    .line 43
    :cond_a
    :try_start_a
    sget-object v0, Lcom/facebook/appevents/UserDataStore;->TAG:Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_c} :catch_d

    return-object v0

    :catch_d
    move-exception v0

    const-class v2, Lcom/facebook/appevents/UserDataStore;

    invoke-static {v0, v2}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method static synthetic access$400(Landroid/os/Bundle;)V
    .registers 2

    const-class v0, Lcom/facebook/appevents/UserDataStore;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 43
    :cond_9
    :try_start_9
    invoke-static {p0}, Lcom/facebook/appevents/UserDataStore;->updateHashUserData(Landroid/os/Bundle;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception p0

    const-class v0, Lcom/facebook/appevents/UserDataStore;

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$500()Ljava/util/concurrent/ConcurrentHashMap;
    .registers 3

    const-class v0, Lcom/facebook/appevents/UserDataStore;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    .line 43
    :cond_a
    :try_start_a
    sget-object v0, Lcom/facebook/appevents/UserDataStore;->externalHashedUserData:Ljava/util/concurrent/ConcurrentHashMap;
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_c} :catch_d

    return-object v0

    :catch_d
    move-exception v0

    const-class v2, Lcom/facebook/appevents/UserDataStore;

    invoke-static {v0, v2}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method static synthetic access$600(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    const-class v0, Lcom/facebook/appevents/UserDataStore;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 43
    :cond_9
    :try_start_9
    invoke-static {p0, p1}, Lcom/facebook/appevents/UserDataStore;->writeDataIntoCache(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception p0

    const-class p1, Lcom/facebook/appevents/UserDataStore;

    invoke-static {p0, p1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$700()Ljava/util/concurrent/ConcurrentHashMap;
    .registers 3

    const-class v0, Lcom/facebook/appevents/UserDataStore;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    .line 43
    :cond_a
    :try_start_a
    sget-object v0, Lcom/facebook/appevents/UserDataStore;->internalHashedUserData:Ljava/util/concurrent/ConcurrentHashMap;
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_c} :catch_d

    return-object v0

    :catch_d
    move-exception v0

    const-class v2, Lcom/facebook/appevents/UserDataStore;

    invoke-static {v0, v2}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method static clear()V
    .registers 2

    const-class v0, Lcom/facebook/appevents/UserDataStore;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 158
    :cond_9
    :try_start_9
    invoke-static {}, Lcom/facebook/appevents/InternalAppEventsLogger;->getAnalyticsExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/facebook/appevents/UserDataStore$3;

    invoke-direct {v1}, Lcom/facebook/appevents/UserDataStore$3;-><init>()V

    .line 159
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_15} :catch_16

    return-void

    :catch_16
    move-exception v0

    .line 171
    const-class v1, Lcom/facebook/appevents/UserDataStore;

    invoke-static {v0, v1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public static getAllHashedUserData()Ljava/lang/String;
    .registers 3

    const-class v0, Lcom/facebook/appevents/UserDataStore;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    .line 182
    :cond_a
    :try_start_a
    sget-object v0, Lcom/facebook/appevents/UserDataStore;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_15

    .line 183
    invoke-static {}, Lcom/facebook/appevents/UserDataStore;->initAndWait()V

    .line 185
    :cond_15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 186
    sget-object v2, Lcom/facebook/appevents/UserDataStore;->externalHashedUserData:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 187
    invoke-static {}, Lcom/facebook/appevents/UserDataStore;->getEnabledInternalUserData()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 188
    invoke-static {v0}, Lcom/facebook/internal/Utility;->mapToJsonStr(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_2a} :catch_2b

    return-object v0

    :catch_2b
    move-exception v0

    const-class v2, Lcom/facebook/appevents/UserDataStore;

    invoke-static {v0, v2}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method private static getEnabledInternalUserData()Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/facebook/appevents/UserDataStore;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    .line 192
    :cond_a
    :try_start_a
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 193
    invoke-static {}, Lcom/facebook/appevents/aam/MetadataRule;->getEnabledRuleNames()Ljava/util/Set;

    move-result-object v2

    .line 195
    sget-object v3, Lcom/facebook/appevents/UserDataStore;->internalHashedUserData:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1d
    :goto_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_39

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 196
    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 197
    sget-object v5, Lcom/facebook/appevents/UserDataStore;->internalHashedUserData:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_38} :catch_3a

    goto :goto_1d

    :cond_39
    return-object v0

    :catch_3a
    move-exception v0

    .line 200
    const-class v2, Lcom/facebook/appevents/UserDataStore;

    invoke-static {v0, v2}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method static getHashedUserData()Ljava/lang/String;
    .registers 3

    const-class v0, Lcom/facebook/appevents/UserDataStore;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    .line 174
    :cond_a
    :try_start_a
    sget-object v0, Lcom/facebook/appevents/UserDataStore;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 175
    sget-object v0, Lcom/facebook/appevents/UserDataStore;->TAG:Ljava/lang/String;

    const-string v2, "initStore should have been called before calling setUserID"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-static {}, Lcom/facebook/appevents/UserDataStore;->initAndWait()V

    .line 178
    :cond_1c
    sget-object v0, Lcom/facebook/appevents/UserDataStore;->externalHashedUserData:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Lcom/facebook/internal/Utility;->mapToJsonStr(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_22} :catch_23

    return-object v0

    :catch_23
    move-exception v0

    const-class v2, Lcom/facebook/appevents/UserDataStore;

    invoke-static {v0, v2}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method private static declared-synchronized initAndWait()V
    .registers 5

    const-class v0, Lcom/facebook/appevents/UserDataStore;

    monitor-enter v0

    :try_start_3
    const-class v1, Lcom/facebook/appevents/UserDataStore;

    invoke-static {v1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_57

    if-eqz v1, :cond_d

    monitor-exit v0

    return-void

    .line 204
    :cond_d
    :try_start_d
    sget-object v1, Lcom/facebook/appevents/UserDataStore;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_13} :catch_4f
    .catchall {:try_start_d .. :try_end_13} :catchall_57

    if-eqz v1, :cond_17

    .line 205
    monitor-exit v0

    return-void

    .line 208
    :cond_17
    :try_start_17
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lcom/facebook/appevents/UserDataStore;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 209
    sget-object v1, Lcom/facebook/appevents/UserDataStore;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "com.facebook.appevents.UserDataStore.userData"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 210
    sget-object v2, Lcom/facebook/appevents/UserDataStore;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "com.facebook.appevents.UserDataStore.internalUserData"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 211
    sget-object v3, Lcom/facebook/appevents/UserDataStore;->externalHashedUserData:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Lcom/facebook/internal/Utility;->JsonStrToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    .line 212
    sget-object v1, Lcom/facebook/appevents/UserDataStore;->internalHashedUserData:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2}, Lcom/facebook/internal/Utility;->JsonStrToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    .line 213
    sget-object v1, Lcom/facebook/appevents/UserDataStore;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_4d} :catch_4f
    .catchall {:try_start_17 .. :try_end_4d} :catchall_57

    .line 214
    monitor-exit v0

    return-void

    :catch_4f
    move-exception v1

    :try_start_50
    const-class v2, Lcom/facebook/appevents/UserDataStore;

    invoke-static {v1, v2}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_55
    .catchall {:try_start_50 .. :try_end_55} :catchall_57

    monitor-exit v0

    return-void

    :catchall_57
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static initStore()V
    .registers 2

    const-class v0, Lcom/facebook/appevents/UserDataStore;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 72
    :cond_9
    :try_start_9
    sget-object v0, Lcom/facebook/appevents/UserDataStore;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_12

    return-void

    .line 75
    :cond_12
    invoke-static {}, Lcom/facebook/appevents/UserDataStore;->initAndWait()V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_15} :catch_16

    return-void

    :catch_16
    move-exception v0

    .line 76
    const-class v1, Lcom/facebook/appevents/UserDataStore;

    invoke-static {v0, v1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method private static maybeSHA256Hashed(Ljava/lang/String;)Z
    .registers 3

    const-class v0, Lcom/facebook/appevents/UserDataStore;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    :cond_a
    :try_start_a
    const-string v0, "[A-Fa-f0-9]{64}"

    .line 311
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_10} :catch_11

    return p0

    :catch_11
    move-exception p0

    const-class v0, Lcom/facebook/appevents/UserDataStore;

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v1
.end method

.method private static normalizeData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-class v0, Lcom/facebook/appevents/UserDataStore;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    .line 282
    :cond_a
    :try_start_a
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "em"

    .line 284
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_18} :catch_71

    const-string v2, ""

    if-eqz v0, :cond_31

    .line 285
    :try_start_1c
    sget-object p0, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    if-eqz p0, :cond_29

    return-object p1

    .line 288
    :cond_29
    sget-object p0, Lcom/facebook/appevents/UserDataStore;->TAG:Ljava/lang/String;

    const-string p1, "Setting email failure: this is not a valid email address"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_31
    const-string v0, "ph"

    .line 293
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    const-string p0, "[^0-9]"

    .line 294
    invoke-virtual {p1, p0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_40
    const-string v0, "ge"

    .line 297
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_70

    .line 298
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_55

    const/4 p0, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_56

    :cond_55
    move-object p0, v2

    :goto_56
    const-string p1, "f"

    .line 299
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6f

    const-string p1, "m"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_67

    goto :goto_6f

    .line 302
    :cond_67
    sget-object p0, Lcom/facebook/appevents/UserDataStore;->TAG:Ljava/lang/String;

    const-string p1, "Setting gender failure: the supported value for gender is f or m"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6e
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_6e} :catch_71

    return-object v2

    :cond_6f
    :goto_6f
    return-object p0

    :cond_70
    return-object p1

    :catch_71
    move-exception p0

    .line 307
    const-class p1, Lcom/facebook/appevents/UserDataStore;

    invoke-static {p0, p1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method static setInternalUd(Ljava/util/Map;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-class v0, Lcom/facebook/appevents/UserDataStore;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 239
    :cond_9
    :try_start_9
    sget-object v0, Lcom/facebook/appevents/UserDataStore;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_14

    .line 240
    invoke-static {}, Lcom/facebook/appevents/UserDataStore;->initAndWait()V

    .line 242
    :cond_14
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_ae

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 243
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 244
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 245
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/appevents/UserDataStore;->normalizeData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/internal/Utility;->sha256hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 246
    sget-object v3, Lcom/facebook/appevents/UserDataStore;->internalHashedUserData:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a7

    .line 247
    sget-object v3, Lcom/facebook/appevents/UserDataStore;->internalHashedUserData:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_50} :catch_ba

    const/4 v4, 0x0

    const-string v5, ","

    if-eqz v3, :cond_5a

    .line 250
    :try_start_55
    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    goto :goto_5c

    .line 252
    :cond_5a
    new-array v6, v4, [Ljava/lang/String;

    .line 254
    :goto_5c
    new-instance v7, Ljava/util/HashSet;

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 255
    invoke-interface {v7, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6c

    return-void

    .line 258
    :cond_6c
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 260
    array-length v9, v6

    if-nez v9, :cond_78

    .line 261
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9c

    .line 262
    :cond_78
    array-length v9, v6

    const/4 v10, 0x5

    if-ge v9, v10, :cond_86

    .line 263
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9c

    :cond_86
    const/4 v3, 0x1

    :goto_87
    if-ge v3, v10, :cond_94

    .line 266
    aget-object v9, v6, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_87

    .line 268
    :cond_94
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    aget-object v2, v6, v4

    invoke-interface {v7, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 272
    :goto_9c
    sget-object v2, Lcom/facebook/appevents/UserDataStore;->internalHashedUserData:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1c

    .line 274
    :cond_a7
    sget-object v3, Lcom/facebook/appevents/UserDataStore;->internalHashedUserData:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1c

    :cond_ae
    const-string p0, "com.facebook.appevents.UserDataStore.internalUserData"

    .line 278
    sget-object v0, Lcom/facebook/appevents/UserDataStore;->internalHashedUserData:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Lcom/facebook/internal/Utility;->mapToJsonStr(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/appevents/UserDataStore;->writeDataIntoCache(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b9
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_b9} :catch_ba

    return-void

    :catch_ba
    move-exception p0

    .line 279
    const-class v0, Lcom/facebook/appevents/UserDataStore;

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method static setUserDataAndHash(Landroid/os/Bundle;)V
    .registers 3

    const-class v0, Lcom/facebook/appevents/UserDataStore;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 93
    :cond_9
    :try_start_9
    invoke-static {}, Lcom/facebook/appevents/InternalAppEventsLogger;->getAnalyticsExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/facebook/appevents/UserDataStore$2;

    invoke-direct {v1, p0}, Lcom/facebook/appevents/UserDataStore$2;-><init>(Landroid/os/Bundle;)V

    .line 94
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_15} :catch_16

    return-void

    :catch_16
    move-exception p0

    .line 110
    const-class v0, Lcom/facebook/appevents/UserDataStore;

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method static setUserDataAndHash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-class v0, Lcom/facebook/appevents/UserDataStore;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 123
    :cond_9
    :try_start_9
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p0, :cond_15

    const-string v1, "em"

    .line 125
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    if-eqz p1, :cond_1c

    const-string p0, "fn"

    .line 128
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    if-eqz p2, :cond_23

    const-string p0, "ln"

    .line 131
    invoke-virtual {v0, p0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_23
    if-eqz p3, :cond_2a

    const-string p0, "ph"

    .line 134
    invoke-virtual {v0, p0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2a
    if-eqz p4, :cond_31

    const-string p0, "db"

    .line 137
    invoke-virtual {v0, p0, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_31
    if-eqz p5, :cond_38

    const-string p0, "ge"

    .line 140
    invoke-virtual {v0, p0, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_38
    if-eqz p6, :cond_3f

    const-string p0, "ct"

    .line 143
    invoke-virtual {v0, p0, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3f
    if-eqz p7, :cond_46

    const-string p0, "st"

    .line 146
    invoke-virtual {v0, p0, p7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_46
    if-eqz p8, :cond_4d

    const-string p0, "zp"

    .line 149
    invoke-virtual {v0, p0, p8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4d
    if-eqz p9, :cond_54

    const-string p0, "country"

    .line 152
    invoke-virtual {v0, p0, p9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    :cond_54
    invoke-static {v0}, Lcom/facebook/appevents/UserDataStore;->setUserDataAndHash(Landroid/os/Bundle;)V
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_57} :catch_58

    return-void

    :catch_58
    move-exception p0

    .line 155
    const-class p1, Lcom/facebook/appevents/UserDataStore;

    invoke-static {p0, p1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method private static updateHashUserData(Landroid/os/Bundle;)V
    .registers 5

    const-class v0, Lcom/facebook/appevents/UserDataStore;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    if-nez p0, :cond_c

    return-void

    .line 221
    :cond_c
    :try_start_c
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_14
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 222
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_27

    goto :goto_14

    .line 226
    :cond_27
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 227
    invoke-static {v2}, Lcom/facebook/appevents/UserDataStore;->maybeSHA256Hashed(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 228
    sget-object v3, Lcom/facebook/appevents/UserDataStore;->externalHashedUserData:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14

    .line 230
    :cond_3b
    invoke-static {v1, v2}, Lcom/facebook/appevents/UserDataStore;->normalizeData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/internal/Utility;->sha256hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_14

    .line 232
    sget-object v3, Lcom/facebook/appevents/UserDataStore;->externalHashedUserData:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_4a} :catch_4c

    goto :goto_14

    :cond_4b
    return-void

    :catch_4c
    move-exception p0

    .line 236
    const-class v0, Lcom/facebook/appevents/UserDataStore;

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method private static writeDataIntoCache(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-class v0, Lcom/facebook/appevents/UserDataStore;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 79
    :cond_9
    :try_start_9
    invoke-static {}, Lcom/facebook/FacebookSdk;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/facebook/appevents/UserDataStore$1;

    invoke-direct {v1, p0, p1}, Lcom/facebook/appevents/UserDataStore$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_15} :catch_16

    return-void

    :catch_16
    move-exception p0

    .line 90
    const-class p1, Lcom/facebook/appevents/UserDataStore;

    invoke-static {p0, p1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
