.class public Lcom/helpshift/migration/RemoteDataMigrator;
.super Ljava/lang/Object;
.source "RemoteDataMigrator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpshift/migration/RemoteDataMigrator$RemoteDataMigratorListener;
    }
.end annotation


# instance fields
.field private domain:Lcom/helpshift/common/domain/Domain;

.field private legacyProfileMigrationDAO:Lcom/helpshift/migration/LegacyProfileMigrationDAO;

.field private platform:Lcom/helpshift/common/platform/Platform;

.field private remoteDataMigratorListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/helpshift/migration/RemoteDataMigrator$RemoteDataMigratorListener;",
            ">;"
        }
    .end annotation
.end field

.field private userDM:Lcom/helpshift/account/domainmodel/UserDM;


# direct methods
.method public constructor <init>(Lcom/helpshift/common/platform/Platform;Lcom/helpshift/common/domain/Domain;Lcom/helpshift/account/domainmodel/UserDM;Lcom/helpshift/migration/RemoteDataMigrator$RemoteDataMigratorListener;)V
    .registers 5

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/helpshift/migration/RemoteDataMigrator;->platform:Lcom/helpshift/common/platform/Platform;

    .line 37
    iput-object p2, p0, Lcom/helpshift/migration/RemoteDataMigrator;->domain:Lcom/helpshift/common/domain/Domain;

    .line 38
    iput-object p3, p0, Lcom/helpshift/migration/RemoteDataMigrator;->userDM:Lcom/helpshift/account/domainmodel/UserDM;

    .line 39
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/helpshift/migration/RemoteDataMigrator;->remoteDataMigratorListener:Ljava/lang/ref/WeakReference;

    .line 40
    invoke-interface {p1}, Lcom/helpshift/common/platform/Platform;->getLegacyUserMigrationDataSource()Lcom/helpshift/migration/LegacyProfileMigrationDAO;

    move-result-object p1

    iput-object p1, p0, Lcom/helpshift/migration/RemoteDataMigrator;->legacyProfileMigrationDAO:Lcom/helpshift/migration/LegacyProfileMigrationDAO;

    return-void
.end method

.method static synthetic access$000(Lcom/helpshift/migration/RemoteDataMigrator;)V
    .registers 1

    .line 24
    invoke-direct {p0}, Lcom/helpshift/migration/RemoteDataMigrator;->runRemoteMigrationInternal()V

    return-void
.end method

.method static synthetic access$100(Lcom/helpshift/migration/RemoteDataMigrator;)Lcom/helpshift/common/domain/Domain;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/helpshift/migration/RemoteDataMigrator;->domain:Lcom/helpshift/common/domain/Domain;

    return-object p0
.end method

.method static synthetic access$200(Lcom/helpshift/migration/RemoteDataMigrator;)Ljava/lang/ref/WeakReference;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/helpshift/migration/RemoteDataMigrator;->remoteDataMigratorListener:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$300(Lcom/helpshift/migration/RemoteDataMigrator;)Lcom/helpshift/account/domainmodel/UserDM;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/helpshift/migration/RemoteDataMigrator;->userDM:Lcom/helpshift/account/domainmodel/UserDM;

    return-object p0
.end method

.method private runRemoteMigrationInternal()V
    .registers 7

    .line 110
    invoke-virtual {p0}, Lcom/helpshift/migration/RemoteDataMigrator;->getProfileMigrationState()Lcom/helpshift/migration/MigrationState;

    move-result-object v0

    .line 111
    sget-object v1, Lcom/helpshift/migration/MigrationState;->COMPLETED:Lcom/helpshift/migration/MigrationState;

    if-eq v0, v1, :cond_ca

    sget-object v1, Lcom/helpshift/migration/MigrationState;->IN_PROGRESS:Lcom/helpshift/migration/MigrationState;

    if-ne v0, v1, :cond_e

    goto/16 :goto_ca

    .line 116
    :cond_e
    iget-object v0, p0, Lcom/helpshift/migration/RemoteDataMigrator;->legacyProfileMigrationDAO:Lcom/helpshift/migration/LegacyProfileMigrationDAO;

    iget-object v1, p0, Lcom/helpshift/migration/RemoteDataMigrator;->userDM:Lcom/helpshift/account/domainmodel/UserDM;

    invoke-virtual {v1}, Lcom/helpshift/account/domainmodel/UserDM;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/helpshift/migration/LegacyProfileMigrationDAO;->fetchLegacyProfile(Ljava/lang/String;)Lcom/helpshift/migration/legacyUser/LegacyProfile;

    move-result-object v0

    if-nez v0, :cond_1d

    return-void

    .line 122
    :cond_1d
    iget-object v1, v0, Lcom/helpshift/migration/legacyUser/LegacyProfile;->migrationState:Lcom/helpshift/migration/MigrationState;

    .line 124
    sget-object v2, Lcom/helpshift/migration/MigrationState;->NOT_STARTED:Lcom/helpshift/migration/MigrationState;

    if-eq v1, v2, :cond_27

    sget-object v2, Lcom/helpshift/migration/MigrationState;->FAILED:Lcom/helpshift/migration/MigrationState;

    if-ne v1, v2, :cond_ca

    .line 127
    :cond_27
    new-instance v2, Lcom/helpshift/common/domain/network/POSTNetwork;

    iget-object v3, p0, Lcom/helpshift/migration/RemoteDataMigrator;->domain:Lcom/helpshift/common/domain/Domain;

    iget-object v4, p0, Lcom/helpshift/migration/RemoteDataMigrator;->platform:Lcom/helpshift/common/platform/Platform;

    const-string v5, "/migrate-profile/"

    invoke-direct {v2, v5, v3, v4}, Lcom/helpshift/common/domain/network/POSTNetwork;-><init>(Ljava/lang/String;Lcom/helpshift/common/domain/Domain;Lcom/helpshift/common/platform/Platform;)V

    .line 128
    new-instance v3, Lcom/helpshift/common/domain/network/TSCorrectedNetwork;

    iget-object v4, p0, Lcom/helpshift/migration/RemoteDataMigrator;->platform:Lcom/helpshift/common/platform/Platform;

    invoke-direct {v3, v2, v4}, Lcom/helpshift/common/domain/network/TSCorrectedNetwork;-><init>(Lcom/helpshift/common/domain/network/Network;Lcom/helpshift/common/platform/Platform;)V

    .line 129
    new-instance v2, Lcom/helpshift/common/domain/network/UserPreConditionsFailedNetwork;

    invoke-direct {v2, v3}, Lcom/helpshift/common/domain/network/UserPreConditionsFailedNetwork;-><init>(Lcom/helpshift/common/domain/network/Network;)V

    .line 130
    new-instance v3, Lcom/helpshift/common/domain/network/UserNotFoundNetwork;

    invoke-direct {v3, v2}, Lcom/helpshift/common/domain/network/UserNotFoundNetwork;-><init>(Lcom/helpshift/common/domain/network/Network;)V

    .line 131
    new-instance v2, Lcom/helpshift/common/domain/network/FailedAPICallNetworkDecorator;

    invoke-direct {v2, v3}, Lcom/helpshift/common/domain/network/FailedAPICallNetworkDecorator;-><init>(Lcom/helpshift/common/domain/network/Network;)V

    .line 132
    new-instance v3, Lcom/helpshift/common/domain/network/GuardOKNetwork;

    invoke-direct {v3, v2}, Lcom/helpshift/common/domain/network/GuardOKNetwork;-><init>(Lcom/helpshift/common/domain/network/Network;)V

    .line 135
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 136
    iget-object v0, v0, Lcom/helpshift/migration/legacyUser/LegacyProfile;->serverId:Ljava/lang/String;

    const-string v4, "profile-id"

    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object v0, p0, Lcom/helpshift/migration/RemoteDataMigrator;->userDM:Lcom/helpshift/account/domainmodel/UserDM;

    invoke-virtual {v0}, Lcom/helpshift/account/domainmodel/UserDM;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    const-string v4, "did"

    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object v0, p0, Lcom/helpshift/migration/RemoteDataMigrator;->userDM:Lcom/helpshift/account/domainmodel/UserDM;

    invoke-virtual {v0}, Lcom/helpshift/account/domainmodel/UserDM;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/helpshift/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7b

    .line 139
    iget-object v0, p0, Lcom/helpshift/migration/RemoteDataMigrator;->userDM:Lcom/helpshift/account/domainmodel/UserDM;

    invoke-virtual {v0}, Lcom/helpshift/account/domainmodel/UserDM;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    const-string v4, "uid"

    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    :cond_7b
    iget-object v0, p0, Lcom/helpshift/migration/RemoteDataMigrator;->userDM:Lcom/helpshift/account/domainmodel/UserDM;

    invoke-virtual {v0}, Lcom/helpshift/account/domainmodel/UserDM;->getEmail()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/helpshift/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_92

    .line 142
    iget-object v0, p0, Lcom/helpshift/migration/RemoteDataMigrator;->userDM:Lcom/helpshift/account/domainmodel/UserDM;

    invoke-virtual {v0}, Lcom/helpshift/account/domainmodel/UserDM;->getEmail()Ljava/lang/String;

    move-result-object v0

    const-string v4, "email"

    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    :cond_92
    sget-object v0, Lcom/helpshift/migration/MigrationState;->IN_PROGRESS:Lcom/helpshift/migration/MigrationState;

    invoke-direct {p0, v1, v0}, Lcom/helpshift/migration/RemoteDataMigrator;->updateProfileMigrationStateUpdate(Lcom/helpshift/migration/MigrationState;Lcom/helpshift/migration/MigrationState;)V

    .line 150
    :try_start_97
    new-instance v0, Lcom/helpshift/common/platform/network/RequestData;

    invoke-direct {v0, v2}, Lcom/helpshift/common/platform/network/RequestData;-><init>(Ljava/util/Map;)V

    invoke-interface {v3, v0}, Lcom/helpshift/common/domain/network/Network;->makeRequest(Lcom/helpshift/common/platform/network/RequestData;)Lcom/helpshift/common/platform/network/Response;

    .line 152
    sget-object v0, Lcom/helpshift/migration/MigrationState;->COMPLETED:Lcom/helpshift/migration/MigrationState;

    invoke-direct {p0, v1, v0}, Lcom/helpshift/migration/RemoteDataMigrator;->updateProfileMigrationStateUpdate(Lcom/helpshift/migration/MigrationState;Lcom/helpshift/migration/MigrationState;)V
    :try_end_a4
    .catch Lcom/helpshift/common/exception/RootAPIException; {:try_start_97 .. :try_end_a4} :catch_a5

    goto :goto_ca

    :catch_a5
    move-exception v0

    .line 156
    iget-object v2, v0, Lcom/helpshift/common/exception/RootAPIException;->exceptionType:Lcom/helpshift/common/exception/ExceptionType;

    sget-object v3, Lcom/helpshift/common/exception/NetworkException;->USER_PRE_CONDITION_FAILED:Lcom/helpshift/common/exception/NetworkException;

    if-eq v2, v3, :cond_c5

    iget-object v2, v0, Lcom/helpshift/common/exception/RootAPIException;->exceptionType:Lcom/helpshift/common/exception/ExceptionType;

    sget-object v3, Lcom/helpshift/common/exception/NetworkException;->USER_NOT_FOUND:Lcom/helpshift/common/exception/NetworkException;

    if-ne v2, v3, :cond_b3

    goto :goto_c5

    .line 160
    :cond_b3
    iget-object v2, v0, Lcom/helpshift/common/exception/RootAPIException;->exceptionType:Lcom/helpshift/common/exception/ExceptionType;

    sget-object v3, Lcom/helpshift/common/exception/NetworkException;->NON_RETRIABLE:Lcom/helpshift/common/exception/NetworkException;

    if-ne v2, v3, :cond_bf

    .line 162
    sget-object v0, Lcom/helpshift/migration/MigrationState;->COMPLETED:Lcom/helpshift/migration/MigrationState;

    invoke-direct {p0, v1, v0}, Lcom/helpshift/migration/RemoteDataMigrator;->updateProfileMigrationStateUpdate(Lcom/helpshift/migration/MigrationState;Lcom/helpshift/migration/MigrationState;)V

    goto :goto_ca

    .line 166
    :cond_bf
    sget-object v2, Lcom/helpshift/migration/MigrationState;->FAILED:Lcom/helpshift/migration/MigrationState;

    invoke-direct {p0, v1, v2}, Lcom/helpshift/migration/RemoteDataMigrator;->updateProfileMigrationStateUpdate(Lcom/helpshift/migration/MigrationState;Lcom/helpshift/migration/MigrationState;)V

    .line 167
    throw v0

    .line 158
    :cond_c5
    :goto_c5
    sget-object v0, Lcom/helpshift/migration/MigrationState;->COMPLETED:Lcom/helpshift/migration/MigrationState;

    invoke-direct {p0, v1, v0}, Lcom/helpshift/migration/RemoteDataMigrator;->updateProfileMigrationStateUpdate(Lcom/helpshift/migration/MigrationState;Lcom/helpshift/migration/MigrationState;)V

    :cond_ca
    :goto_ca
    return-void
.end method

.method private updateProfileMigrationStateUpdate(Lcom/helpshift/migration/MigrationState;Lcom/helpshift/migration/MigrationState;)V
    .registers 5

    .line 180
    sget-object v0, Lcom/helpshift/migration/MigrationState;->COMPLETED:Lcom/helpshift/migration/MigrationState;

    if-ne p2, v0, :cond_10

    .line 182
    iget-object v0, p0, Lcom/helpshift/migration/RemoteDataMigrator;->legacyProfileMigrationDAO:Lcom/helpshift/migration/LegacyProfileMigrationDAO;

    iget-object v1, p0, Lcom/helpshift/migration/RemoteDataMigrator;->userDM:Lcom/helpshift/account/domainmodel/UserDM;

    invoke-virtual {v1}, Lcom/helpshift/account/domainmodel/UserDM;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/helpshift/migration/LegacyProfileMigrationDAO;->deleteLegacyProfile(Ljava/lang/String;)V

    goto :goto_1b

    .line 186
    :cond_10
    iget-object v0, p0, Lcom/helpshift/migration/RemoteDataMigrator;->legacyProfileMigrationDAO:Lcom/helpshift/migration/LegacyProfileMigrationDAO;

    iget-object v1, p0, Lcom/helpshift/migration/RemoteDataMigrator;->userDM:Lcom/helpshift/account/domainmodel/UserDM;

    invoke-virtual {v1}, Lcom/helpshift/account/domainmodel/UserDM;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/helpshift/migration/LegacyProfileMigrationDAO;->updateMigrationState(Ljava/lang/String;Lcom/helpshift/migration/MigrationState;)Z

    .line 190
    :goto_1b
    iget-object v0, p0, Lcom/helpshift/migration/RemoteDataMigrator;->domain:Lcom/helpshift/common/domain/Domain;

    new-instance v1, Lcom/helpshift/migration/RemoteDataMigrator$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/helpshift/migration/RemoteDataMigrator$2;-><init>(Lcom/helpshift/migration/RemoteDataMigrator;Lcom/helpshift/migration/MigrationState;Lcom/helpshift/migration/MigrationState;)V

    invoke-virtual {v0, v1}, Lcom/helpshift/common/domain/Domain;->runSerial(Lcom/helpshift/common/domain/F;)V

    return-void
.end method


# virtual methods
.method public getProfileMigrationState()Lcom/helpshift/migration/MigrationState;
    .registers 3

    .line 64
    iget-object v0, p0, Lcom/helpshift/migration/RemoteDataMigrator;->userDM:Lcom/helpshift/account/domainmodel/UserDM;

    invoke-virtual {v0}, Lcom/helpshift/account/domainmodel/UserDM;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/helpshift/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 65
    sget-object v0, Lcom/helpshift/migration/MigrationState;->COMPLETED:Lcom/helpshift/migration/MigrationState;

    return-object v0

    .line 67
    :cond_f
    iget-object v0, p0, Lcom/helpshift/migration/RemoteDataMigrator;->legacyProfileMigrationDAO:Lcom/helpshift/migration/LegacyProfileMigrationDAO;

    iget-object v1, p0, Lcom/helpshift/migration/RemoteDataMigrator;->userDM:Lcom/helpshift/account/domainmodel/UserDM;

    invoke-virtual {v1}, Lcom/helpshift/account/domainmodel/UserDM;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/helpshift/migration/LegacyProfileMigrationDAO;->fetchLegacyProfile(Ljava/lang/String;)Lcom/helpshift/migration/legacyUser/LegacyProfile;

    move-result-object v0

    if-nez v0, :cond_20

    .line 75
    sget-object v0, Lcom/helpshift/migration/MigrationState;->COMPLETED:Lcom/helpshift/migration/MigrationState;

    return-object v0

    .line 77
    :cond_20
    iget-object v0, v0, Lcom/helpshift/migration/legacyUser/LegacyProfile;->migrationState:Lcom/helpshift/migration/MigrationState;

    return-object v0
.end method

.method public retry()V
    .registers 1

    .line 201
    invoke-direct {p0}, Lcom/helpshift/migration/RemoteDataMigrator;->runRemoteMigrationInternal()V

    return-void
.end method

.method public setAppropriateInitialState()V
    .registers 3

    .line 47
    invoke-virtual {p0}, Lcom/helpshift/migration/RemoteDataMigrator;->getProfileMigrationState()Lcom/helpshift/migration/MigrationState;

    move-result-object v0

    .line 48
    sget-object v1, Lcom/helpshift/migration/MigrationState;->IN_PROGRESS:Lcom/helpshift/migration/MigrationState;

    if-ne v0, v1, :cond_f

    .line 50
    sget-object v0, Lcom/helpshift/migration/MigrationState;->IN_PROGRESS:Lcom/helpshift/migration/MigrationState;

    sget-object v1, Lcom/helpshift/migration/MigrationState;->NOT_STARTED:Lcom/helpshift/migration/MigrationState;

    invoke-direct {p0, v0, v1}, Lcom/helpshift/migration/RemoteDataMigrator;->updateProfileMigrationStateUpdate(Lcom/helpshift/migration/MigrationState;Lcom/helpshift/migration/MigrationState;)V

    :cond_f
    return-void
.end method

.method public startProfileMigration()V
    .registers 3

    .line 82
    invoke-virtual {p0}, Lcom/helpshift/migration/RemoteDataMigrator;->getProfileMigrationState()Lcom/helpshift/migration/MigrationState;

    move-result-object v0

    .line 83
    sget-object v1, Lcom/helpshift/migration/MigrationState;->COMPLETED:Lcom/helpshift/migration/MigrationState;

    if-eq v0, v1, :cond_17

    sget-object v1, Lcom/helpshift/migration/MigrationState;->IN_PROGRESS:Lcom/helpshift/migration/MigrationState;

    if-ne v0, v1, :cond_d

    goto :goto_17

    .line 88
    :cond_d
    iget-object v0, p0, Lcom/helpshift/migration/RemoteDataMigrator;->domain:Lcom/helpshift/common/domain/Domain;

    new-instance v1, Lcom/helpshift/migration/RemoteDataMigrator$1;

    invoke-direct {v1, p0}, Lcom/helpshift/migration/RemoteDataMigrator$1;-><init>(Lcom/helpshift/migration/RemoteDataMigrator;)V

    invoke-virtual {v0, v1}, Lcom/helpshift/common/domain/Domain;->runParallel(Lcom/helpshift/common/domain/F;)V

    :cond_17
    :goto_17
    return-void
.end method
