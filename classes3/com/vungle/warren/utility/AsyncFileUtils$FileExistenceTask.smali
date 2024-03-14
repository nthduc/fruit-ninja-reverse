.class Lcom/vungle/warren/utility/AsyncFileUtils$FileExistenceTask;
.super Landroid/os/AsyncTask;
.source "AsyncFileUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/utility/AsyncFileUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileExistenceTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private callback:Lcom/vungle/warren/utility/AsyncFileUtils$FileExistCallback;

.field private final file:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Lcom/vungle/warren/utility/AsyncFileUtils$FileExistCallback;)V
    .registers 3
    .param p1    # Ljava/io/File;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/vungle/warren/utility/AsyncFileUtils$FileExistCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 42
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/vungle/warren/utility/AsyncFileUtils$FileExistenceTask;->file:Ljava/io/File;

    .line 44
    iput-object p2, p0, Lcom/vungle/warren/utility/AsyncFileUtils$FileExistenceTask;->callback:Lcom/vungle/warren/utility/AsyncFileUtils$FileExistCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/vungle/warren/utility/AsyncFileUtils$FileExistenceTask;)V
    .registers 1

    .line 37
    invoke-direct {p0}, Lcom/vungle/warren/utility/AsyncFileUtils$FileExistenceTask;->clear()V

    return-void
.end method

.method private declared-synchronized clear()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 64
    :try_start_2
    iput-object v0, p0, Lcom/vungle/warren/utility/AsyncFileUtils$FileExistenceTask;->callback:Lcom/vungle/warren/utility/AsyncFileUtils$FileExistCallback;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 65
    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .registers 2

    .line 49
    iget-object p1, p0, Lcom/vungle/warren/utility/AsyncFileUtils$FileExistenceTask;->file:Ljava/io/File;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 37
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/vungle/warren/utility/AsyncFileUtils$FileExistenceTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .registers 3

    .line 54
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 56
    monitor-enter p0

    .line 57
    :try_start_4
    iget-object v0, p0, Lcom/vungle/warren/utility/AsyncFileUtils$FileExistenceTask;->callback:Lcom/vungle/warren/utility/AsyncFileUtils$FileExistCallback;

    if-eqz v0, :cond_11

    .line 58
    iget-object v0, p0, Lcom/vungle/warren/utility/AsyncFileUtils$FileExistenceTask;->callback:Lcom/vungle/warren/utility/AsyncFileUtils$FileExistCallback;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/vungle/warren/utility/AsyncFileUtils$FileExistCallback;->status(Z)V

    .line 60
    :cond_11
    monitor-exit p0

    return-void

    :catchall_13
    move-exception p1

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_13

    throw p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 37
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/vungle/warren/utility/AsyncFileUtils$FileExistenceTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
