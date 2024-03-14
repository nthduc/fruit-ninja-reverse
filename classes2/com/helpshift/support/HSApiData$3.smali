.class Lcom/helpshift/support/HSApiData$3;
.super Ljava/lang/Object;
.source "HSApiData.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/support/HSApiData;->loadIndex()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/support/HSApiData;


# direct methods
.method constructor <init>(Lcom/helpshift/support/HSApiData;)V
    .registers 2

    .line 457
    iput-object p1, p0, Lcom/helpshift/support/HSApiData$3;->this$0:Lcom/helpshift/support/HSApiData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 460
    :try_start_0
    iget-object v0, p0, Lcom/helpshift/support/HSApiData$3;->this$0:Lcom/helpshift/support/HSApiData;

    iget-object v0, v0, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v0}, Lcom/helpshift/support/HSStorage;->loadIndex()V
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_7} :catch_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_27

    :catch_8
    move-exception v0

    goto :goto_d

    :catch_a
    move-exception v0

    goto :goto_d

    :catch_c
    move-exception v0

    :goto_d
    const-string v1, "Helpshift_ApiData"

    const-string v2, "Exception while loading index: trying to re-create the index"

    .line 463
    invoke-static {v1, v2, v0}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 468
    iget-object v0, p0, Lcom/helpshift/support/HSApiData$3;->this$0:Lcom/helpshift/support/HSApiData;

    invoke-virtual {v0}, Lcom/helpshift/support/HSApiData;->updateIndex()V

    .line 470
    :try_start_19
    iget-object v0, p0, Lcom/helpshift/support/HSApiData$3;->this$0:Lcom/helpshift/support/HSApiData;

    iget-object v0, v0, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v0}, Lcom/helpshift/support/HSStorage;->loadIndex()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_20} :catch_21

    goto :goto_27

    :catch_21
    move-exception v0

    const-string v2, "Exception caught again, while loading index: "

    .line 473
    invoke-static {v1, v2, v0}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_27
    return-void
.end method
