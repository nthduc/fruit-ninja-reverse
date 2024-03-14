.class Lcom/vungle/warren/AdLoader$5$1;
.super Ljava/lang/Object;
.source "AdLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/AdLoader$5;->onSaved()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vungle/warren/AdLoader$5;


# direct methods
.method constructor <init>(Lcom/vungle/warren/AdLoader$5;)V
    .registers 2

    .line 1340
    iput-object p1, p0, Lcom/vungle/warren/AdLoader$5$1;->this$1:Lcom/vungle/warren/AdLoader$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1344
    :try_start_0
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$5$1;->this$1:Lcom/vungle/warren/AdLoader$5;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$5;->val$downloadedFile:Ljava/io/File;

    invoke-static {v0}, Lcom/vungle/warren/utility/FileUtility;->delete(Ljava/io/File;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_12

    :catch_8
    move-exception v0

    .line 1347
    # getter for: Lcom/vungle/warren/AdLoader;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/vungle/warren/AdLoader;->access$600()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error on deleting zip assets archive"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_12
    return-void
.end method
