.class Lcom/adcolony/sdk/g0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/io/File;

.field private f:Ljava/io/File;

.field private g:Ljava/io/File;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)D
    .registers 7

    .line 1
    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, p1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result p1

    int-to-long v1, p1

    .line 3
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result p1
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_e} :catch_13

    int-to-long v3, p1

    mul-long v3, v3, v1

    long-to-double v0, v3

    return-wide v0

    :catch_13
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method a()Ljava/lang/String;
    .registers 2

    .line 4
    iget-object v0, p0, Lcom/adcolony/sdk/g0;->a:Ljava/lang/String;

    return-object v0
.end method

.method b()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/adcolony/sdk/g0;->c:Ljava/lang/String;

    return-object v0
.end method

.method c()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/adcolony/sdk/g0;->b:Ljava/lang/String;

    return-object v0
.end method

.method d()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/adcolony/sdk/g0;->d:Ljava/lang/String;

    return-object v0
.end method

.method e()Z
    .registers 9

    .line 1
    invoke-static {}, Lcom/adcolony/sdk/a;->c()Lcom/adcolony/sdk/h;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/adcolony/sdk/g0;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/adc3/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/adcolony/sdk/g0;->a:Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/adcolony/sdk/g0;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "media/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/adcolony/sdk/g0;->b:Ljava/lang/String;

    .line 4
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/adcolony/sdk/g0;->b:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/adcolony/sdk/g0;->e:Ljava/io/File;

    .line 6
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_49

    .line 7
    iget-object v1, p0, Lcom/adcolony/sdk/g0;->e:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 8
    iget-object v1, p0, Lcom/adcolony/sdk/g0;->e:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 11
    :cond_49
    iget-object v1, p0, Lcom/adcolony/sdk/g0;->e:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_57

    .line 12
    invoke-virtual {v0, v3}, Lcom/adcolony/sdk/h;->b(Z)V

    return v2

    .line 16
    :cond_57
    iget-object v1, p0, Lcom/adcolony/sdk/g0;->b:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/adcolony/sdk/g0;->a(Ljava/lang/String;)D

    move-result-wide v4

    const-wide/high16 v6, 0x4174000000000000L    # 2.097152E7

    cmpg-double v1, v4, v6

    if-gez v1, :cond_77

    .line 17
    new-instance v1, Lcom/adcolony/sdk/u$a;

    invoke-direct {v1}, Lcom/adcolony/sdk/u$a;-><init>()V

    const-string v4, "Not enough memory available at media path, disabling AdColony."

    .line 18
    invoke-virtual {v1, v4}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object v1

    sget-object v4, Lcom/adcolony/sdk/u;->g:Lcom/adcolony/sdk/u;

    .line 19
    invoke-virtual {v1, v4}, Lcom/adcolony/sdk/u$a;->a(Lcom/adcolony/sdk/u;)V

    .line 20
    invoke-virtual {v0, v3}, Lcom/adcolony/sdk/h;->b(Z)V

    return v2

    .line 24
    :cond_77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/adcolony/sdk/g0;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/adc3/data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/g0;->c:Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/adcolony/sdk/g0;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/adcolony/sdk/g0;->f:Ljava/io/File;

    .line 26
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_a2

    .line 27
    iget-object v0, p0, Lcom/adcolony/sdk/g0;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 29
    :cond_a2
    iget-object v0, p0, Lcom/adcolony/sdk/g0;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/adcolony/sdk/g0;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "tmp/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/g0;->d:Ljava/lang/String;

    .line 31
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/adcolony/sdk/g0;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/adcolony/sdk/g0;->g:Ljava/io/File;

    .line 32
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_d5

    .line 33
    iget-object v0, p0, Lcom/adcolony/sdk/g0;->g:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 34
    iget-object v0, p0, Lcom/adcolony/sdk/g0;->g:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_d5
    return v3
.end method

.method f()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {}, Lcom/adcolony/sdk/a;->b()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_9

    const-string v0, ""

    return-object v0

    .line 4
    :cond_9
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method g()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/adcolony/sdk/g0;->e:Ljava/io/File;

    if-eqz v0, :cond_43

    iget-object v1, p0, Lcom/adcolony/sdk/g0;->f:Ljava/io/File;

    if-eqz v1, :cond_43

    iget-object v1, p0, Lcom/adcolony/sdk/g0;->g:Ljava/io/File;

    if-nez v1, :cond_d

    goto :goto_43

    .line 4
    :cond_d
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_18

    .line 5
    iget-object v0, p0, Lcom/adcolony/sdk/g0;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 7
    :cond_18
    iget-object v0, p0, Lcom/adcolony/sdk/g0;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_25

    .line 8
    iget-object v0, p0, Lcom/adcolony/sdk/g0;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 10
    :cond_25
    iget-object v0, p0, Lcom/adcolony/sdk/g0;->g:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_32

    .line 11
    iget-object v0, p0, Lcom/adcolony/sdk/g0;->g:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 13
    :cond_32
    iget-object v0, p0, Lcom/adcolony/sdk/g0;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 14
    iget-object v0, p0, Lcom/adcolony/sdk/g0;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 15
    iget-object v0, p0, Lcom/adcolony/sdk/g0;->g:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    const/4 v0, 0x1

    return v0

    :cond_43
    :goto_43
    const/4 v0, 0x0

    return v0
.end method
