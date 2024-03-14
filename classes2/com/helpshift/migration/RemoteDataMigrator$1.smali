.class Lcom/helpshift/migration/RemoteDataMigrator$1;
.super Lcom/helpshift/common/domain/F;
.source "RemoteDataMigrator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/migration/RemoteDataMigrator;->startProfileMigration()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/migration/RemoteDataMigrator;


# direct methods
.method constructor <init>(Lcom/helpshift/migration/RemoteDataMigrator;)V
    .registers 2

    .line 88
    iput-object p1, p0, Lcom/helpshift/migration/RemoteDataMigrator$1;->this$0:Lcom/helpshift/migration/RemoteDataMigrator;

    invoke-direct {p0}, Lcom/helpshift/common/domain/F;-><init>()V

    return-void
.end method


# virtual methods
.method public f()V
    .registers 5

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/helpshift/migration/RemoteDataMigrator$1;->this$0:Lcom/helpshift/migration/RemoteDataMigrator;

    # invokes: Lcom/helpshift/migration/RemoteDataMigrator;->runRemoteMigrationInternal()V
    invoke-static {v0}, Lcom/helpshift/migration/RemoteDataMigrator;->access$000(Lcom/helpshift/migration/RemoteDataMigrator;)V
    :try_end_5
    .catch Lcom/helpshift/common/exception/RootAPIException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    .line 96
    iget-object v1, p0, Lcom/helpshift/migration/RemoteDataMigrator$1;->this$0:Lcom/helpshift/migration/RemoteDataMigrator;

    # getter for: Lcom/helpshift/migration/RemoteDataMigrator;->domain:Lcom/helpshift/common/domain/Domain;
    invoke-static {v1}, Lcom/helpshift/migration/RemoteDataMigrator;->access$100(Lcom/helpshift/migration/RemoteDataMigrator;)Lcom/helpshift/common/domain/Domain;

    move-result-object v1

    invoke-virtual {v1}, Lcom/helpshift/common/domain/Domain;->getAutoRetryFailedEventDM()Lcom/helpshift/common/AutoRetryFailedEventDM;

    move-result-object v1

    sget-object v2, Lcom/helpshift/common/AutoRetryFailedEventDM$EventType;->MIGRATION:Lcom/helpshift/common/AutoRetryFailedEventDM$EventType;

    .line 97
    invoke-virtual {v0}, Lcom/helpshift/common/exception/RootAPIException;->getServerStatusCode()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/helpshift/common/AutoRetryFailedEventDM;->scheduleRetryTaskForEventType(Lcom/helpshift/common/AutoRetryFailedEventDM$EventType;I)V

    .line 98
    throw v0
.end method
