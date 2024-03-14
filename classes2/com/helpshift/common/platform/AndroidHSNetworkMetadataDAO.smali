.class public Lcom/helpshift/common/platform/AndroidHSNetworkMetadataDAO;
.super Ljava/lang/Object;
.source "AndroidHSNetworkMetadataDAO.java"

# interfaces
.implements Lcom/helpshift/common/domain/network/dao/HSNetworkMetadataDAO;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final hsNetworkDB:Lcom/helpshift/db/network/HSNetworkMetadataDB;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Helpshift_HSNwDao"

    .line 12
    iput-object v0, p0, Lcom/helpshift/common/platform/AndroidHSNetworkMetadataDAO;->TAG:Ljava/lang/String;

    .line 15
    invoke-static {p1}, Lcom/helpshift/db/network/HSNetworkMetadataDB;->getInstance(Landroid/content/Context;)Lcom/helpshift/db/network/HSNetworkMetadataDB;

    move-result-object p1

    iput-object p1, p0, Lcom/helpshift/common/platform/AndroidHSNetworkMetadataDAO;->hsNetworkDB:Lcom/helpshift/db/network/HSNetworkMetadataDB;

    return-void
.end method


# virtual methods
.method public deleteAllUrlsMetadata()Z
    .registers 2

    .line 46
    iget-object v0, p0, Lcom/helpshift/common/platform/AndroidHSNetworkMetadataDAO;->hsNetworkDB:Lcom/helpshift/db/network/HSNetworkMetadataDB;

    invoke-virtual {v0}, Lcom/helpshift/db/network/HSNetworkMetadataDB;->deleteAllUrlsMetadata()Z

    move-result v0

    return v0
.end method

.method public deleteMetadataForUrl(Ljava/lang/String;)Z
    .registers 3

    .line 41
    iget-object v0, p0, Lcom/helpshift/common/platform/AndroidHSNetworkMetadataDAO;->hsNetworkDB:Lcom/helpshift/db/network/HSNetworkMetadataDB;

    invoke-virtual {v0, p1}, Lcom/helpshift/db/network/HSNetworkMetadataDB;->deleteMetadataForUrl(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public getMetadataOfUrl(Ljava/lang/String;)Lcom/helpshift/common/domain/network/HSUrlMetadata;
    .registers 3

    .line 20
    iget-object v0, p0, Lcom/helpshift/common/platform/AndroidHSNetworkMetadataDAO;->hsNetworkDB:Lcom/helpshift/db/network/HSNetworkMetadataDB;

    invoke-virtual {v0, p1}, Lcom/helpshift/db/network/HSNetworkMetadataDB;->readMetadataForUrl(Ljava/lang/String;)Lcom/helpshift/common/domain/network/HSUrlMetadata;

    move-result-object p1

    return-object p1
.end method

.method public insertOrUpdateMetadataForUrl(Ljava/lang/String;Lcom/helpshift/common/domain/network/HSUrlMetadata;)Z
    .registers 4

    .line 25
    iget-object v0, p0, Lcom/helpshift/common/platform/AndroidHSNetworkMetadataDAO;->hsNetworkDB:Lcom/helpshift/db/network/HSNetworkMetadataDB;

    invoke-virtual {v0, p1}, Lcom/helpshift/db/network/HSNetworkMetadataDB;->readMetadataForUrl(Ljava/lang/String;)Lcom/helpshift/common/domain/network/HSUrlMetadata;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 27
    iget-object v0, p0, Lcom/helpshift/common/platform/AndroidHSNetworkMetadataDAO;->hsNetworkDB:Lcom/helpshift/db/network/HSNetworkMetadataDB;

    invoke-virtual {v0, p1, p2}, Lcom/helpshift/db/network/HSNetworkMetadataDB;->updateMetadataForUrl(Ljava/lang/String;Lcom/helpshift/common/domain/network/HSUrlMetadata;)Z

    move-result p1

    return p1

    .line 30
    :cond_f
    iget-object v0, p0, Lcom/helpshift/common/platform/AndroidHSNetworkMetadataDAO;->hsNetworkDB:Lcom/helpshift/db/network/HSNetworkMetadataDB;

    invoke-virtual {v0, p1, p2}, Lcom/helpshift/db/network/HSNetworkMetadataDB;->insertMetadataForUrl(Ljava/lang/String;Lcom/helpshift/common/domain/network/HSUrlMetadata;)Z

    move-result p1

    return p1
.end method

.method public updateLastFetchTimestampAndFetchStateOfUrl(Ljava/lang/String;JZ)Z
    .registers 6

    .line 36
    iget-object v0, p0, Lcom/helpshift/common/platform/AndroidHSNetworkMetadataDAO;->hsNetworkDB:Lcom/helpshift/db/network/HSNetworkMetadataDB;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/helpshift/db/network/HSNetworkMetadataDB;->updateLastFetchTimestampForUrl(Ljava/lang/String;JZ)Z

    move-result p1

    return p1
.end method
