.class public Lcom/helpshift/account/dao/AndroidLegacyProfileMigrationDAO;
.super Ljava/lang/Object;
.source "AndroidLegacyProfileMigrationDAO.java"

# interfaces
.implements Lcom/helpshift/migration/LegacyProfileMigrationDAO;


# instance fields
.field private final userDB:Lcom/helpshift/account/dao/UserDB;


# direct methods
.method public constructor <init>(Lcom/helpshift/account/dao/UserDB;)V
    .registers 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/helpshift/account/dao/AndroidLegacyProfileMigrationDAO;->userDB:Lcom/helpshift/account/dao/UserDB;

    return-void
.end method


# virtual methods
.method public deleteLegacyProfile(Ljava/lang/String;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    .line 36
    :cond_3
    iget-object v0, p0, Lcom/helpshift/account/dao/AndroidLegacyProfileMigrationDAO;->userDB:Lcom/helpshift/account/dao/UserDB;

    invoke-virtual {v0, p1}, Lcom/helpshift/account/dao/UserDB;->deleteLegacyProfile(Ljava/lang/String;)V

    return-void
.end method

.method public fetchLegacyProfile(Ljava/lang/String;)Lcom/helpshift/migration/legacyUser/LegacyProfile;
    .registers 3

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 45
    :cond_4
    iget-object v0, p0, Lcom/helpshift/account/dao/AndroidLegacyProfileMigrationDAO;->userDB:Lcom/helpshift/account/dao/UserDB;

    invoke-virtual {v0, p1}, Lcom/helpshift/account/dao/UserDB;->fetchLegacyProfile(Ljava/lang/String;)Lcom/helpshift/migration/legacyUser/LegacyProfile;

    move-result-object p1

    return-object p1
.end method

.method public storeLegacyProfiles(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/helpshift/migration/legacyUser/LegacyProfile;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-static {p1}, Lcom/helpshift/util/ListUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 27
    :cond_7
    iget-object v0, p0, Lcom/helpshift/account/dao/AndroidLegacyProfileMigrationDAO;->userDB:Lcom/helpshift/account/dao/UserDB;

    invoke-virtual {v0, p1}, Lcom/helpshift/account/dao/UserDB;->storeLegacyProfiles(Ljava/util/List;)V

    return-void
.end method

.method public updateMigrationState(Ljava/lang/String;Lcom/helpshift/migration/MigrationState;)Z
    .registers 4

    if-eqz p1, :cond_c

    if-nez p2, :cond_5

    goto :goto_c

    .line 54
    :cond_5
    iget-object v0, p0, Lcom/helpshift/account/dao/AndroidLegacyProfileMigrationDAO;->userDB:Lcom/helpshift/account/dao/UserDB;

    invoke-virtual {v0, p1, p2}, Lcom/helpshift/account/dao/UserDB;->updateUserMigrationState(Ljava/lang/String;Lcom/helpshift/migration/MigrationState;)Z

    move-result p1

    return p1

    :cond_c
    :goto_c
    const/4 p1, 0x0

    return p1
.end method
