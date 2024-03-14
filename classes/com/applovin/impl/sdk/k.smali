.class public Lcom/applovin/impl/sdk/k;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/sdk/k$c;,
        Lcom/applovin/impl/sdk/k$a;,
        Lcom/applovin/impl/sdk/k$b;,
        Lcom/applovin/impl/sdk/k$e;,
        Lcom/applovin/impl/sdk/k$d;
    }
.end annotation


# static fields
.field private static g:Ljava/lang/String;

.field private static h:I


# instance fields
.field private final a:Lcom/applovin/impl/sdk/j;

.field private final b:Lcom/applovin/impl/sdk/q;

.field private final c:Landroid/content/Context;

.field private final d:Lcom/applovin/impl/sdk/k$d;

.field private final e:Ljava/lang/Object;

.field private final f:Lcom/applovin/impl/sdk/k$b;

.field private final i:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/applovin/impl/sdk/k$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/applovin/impl/sdk/j;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/k;->e:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/k;->i:Ljava/util/concurrent/atomic/AtomicReference;

    if-eqz p1, :cond_2e

    iput-object p1, p0, Lcom/applovin/impl/sdk/k;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/j;->v()Lcom/applovin/impl/sdk/q;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/k;->b:Lcom/applovin/impl/sdk/q;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/j;->F()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/sdk/k;->c:Landroid/content/Context;

    invoke-direct {p0}, Lcom/applovin/impl/sdk/k;->h()Lcom/applovin/impl/sdk/k$d;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/sdk/k;->d:Lcom/applovin/impl/sdk/k$d;

    invoke-direct {p0}, Lcom/applovin/impl/sdk/k;->j()Lcom/applovin/impl/sdk/k$b;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/sdk/k;->f:Lcom/applovin/impl/sdk/k$b;

    return-void

    :cond_2e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No sdk specified"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Lcom/applovin/impl/sdk/k$d;)Lcom/applovin/impl/sdk/k$d;
    .registers 6

    const-string v0, "DataCollector"

    if-nez p1, :cond_9

    new-instance p1, Lcom/applovin/impl/sdk/k$d;

    invoke-direct {p1}, Lcom/applovin/impl/sdk/k$d;-><init>()V

    :cond_9
    invoke-static {}, Lcom/applovin/impl/sdk/g;->b()Lcom/applovin/impl/sdk/g$a;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/sdk/k;->c:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/g$a;->a(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p1, Lcom/applovin/impl/sdk/k$d;->K:Ljava/lang/Boolean;

    invoke-static {}, Lcom/applovin/impl/sdk/g;->a()Lcom/applovin/impl/sdk/g$a;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/sdk/k;->c:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/g$a;->a(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p1, Lcom/applovin/impl/sdk/k$d;->L:Ljava/lang/Boolean;

    invoke-static {}, Lcom/applovin/impl/sdk/g;->c()Lcom/applovin/impl/sdk/g$a;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/sdk/k;->c:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/g$a;->a(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p1, Lcom/applovin/impl/sdk/k$d;->M:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/applovin/impl/sdk/k;->a:Lcom/applovin/impl/sdk/j;

    sget-object v2, Lcom/applovin/impl/sdk/b/b;->dN:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-direct {p0}, Lcom/applovin/impl/sdk/k;->m()Lcom/applovin/impl/sdk/k$c;

    move-result-object v1

    goto :goto_43

    :cond_42
    const/4 v1, 0x0

    :goto_43
    iput-object v1, p1, Lcom/applovin/impl/sdk/k$d;->u:Lcom/applovin/impl/sdk/k$c;

    iget-object v1, p0, Lcom/applovin/impl/sdk/k;->a:Lcom/applovin/impl/sdk/j;

    sget-object v2, Lcom/applovin/impl/sdk/b/b;->dW:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5b

    invoke-direct {p0}, Lcom/applovin/impl/sdk/k;->s()Z

    move-result v1

    iput-boolean v1, p1, Lcom/applovin/impl/sdk/k$d;->t:Z

    :cond_5b
    iget-object v1, p0, Lcom/applovin/impl/sdk/k;->c:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    if-eqz v1, :cond_80

    iget-object v2, p0, Lcom/applovin/impl/sdk/k;->a:Lcom/applovin/impl/sdk/j;

    sget-object v3, Lcom/applovin/impl/sdk/b/b;->dX:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v2, v3}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v2

    float-to-int v1, v1

    iput v1, p1, Lcom/applovin/impl/sdk/k$d;->x:I

    :cond_80
    :try_start_80
    iget-object v1, p0, Lcom/applovin/impl/sdk/k;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    iput v1, p1, Lcom/applovin/impl/sdk/k$d;->y:I
    :try_end_97
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_80 .. :try_end_97} :catch_98

    goto :goto_a0

    :catch_98
    move-exception v1

    iget-object v2, p0, Lcom/applovin/impl/sdk/k;->b:Lcom/applovin/impl/sdk/q;

    const-string v3, "Unable to collect screen brightness"

    invoke-virtual {v2, v0, v3, v1}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_a0
    iget-object v1, p0, Lcom/applovin/impl/sdk/k;->a:Lcom/applovin/impl/sdk/j;

    sget-object v2, Lcom/applovin/impl/sdk/b/b;->dY:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_c1

    iget-object v1, p0, Lcom/applovin/impl/sdk/k;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/applovin/impl/adview/c;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/applovin/impl/adview/c;->getUserAgent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/o;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c1

    iput-object v1, p1, Lcom/applovin/impl/sdk/k$d;->z:Ljava/lang/String;

    :cond_c1
    iget-object v1, p0, Lcom/applovin/impl/sdk/k;->a:Lcom/applovin/impl/sdk/j;

    sget-object v2, Lcom/applovin/impl/sdk/b/b;->dR:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_f4

    :try_start_d1
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v1

    iput-wide v1, p1, Lcom/applovin/impl/sdk/k$d;->H:J

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v1

    iput-wide v1, p1, Lcom/applovin/impl/sdk/k$d;->I:J
    :try_end_e5
    .catch Ljava/lang/Throwable; {:try_start_d1 .. :try_end_e5} :catch_e6

    goto :goto_f4

    :catch_e6
    move-exception v1

    const-wide/16 v2, -0x1

    iput-wide v2, p1, Lcom/applovin/impl/sdk/k$d;->H:J

    iput-wide v2, p1, Lcom/applovin/impl/sdk/k$d;->I:J

    iget-object v2, p0, Lcom/applovin/impl/sdk/k;->b:Lcom/applovin/impl/sdk/q;

    const-string v3, "Unable to collect total & free space."

    invoke-virtual {v2, v0, v3, v1}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_f4
    :goto_f4
    iget-object v0, p0, Lcom/applovin/impl/sdk/k;->a:Lcom/applovin/impl/sdk/j;

    sget-object v1, Lcom/applovin/impl/sdk/b/b;->dS:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_130

    iget-object v0, p0, Lcom/applovin/impl/sdk/k;->c:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    if-eqz v0, :cond_130

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    iget-object v0, p1, Lcom/applovin/impl/sdk/k$d;->J:Lcom/applovin/impl/sdk/k$e;

    iget-wide v2, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    iput-wide v2, v0, Lcom/applovin/impl/sdk/k$e;->b:J

    iget-object v0, p1, Lcom/applovin/impl/sdk/k$d;->J:Lcom/applovin/impl/sdk/k$e;

    iget-boolean v2, v1, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    iput-boolean v2, v0, Lcom/applovin/impl/sdk/k$e;->d:Z

    iget-object v0, p1, Lcom/applovin/impl/sdk/k$d;->J:Lcom/applovin/impl/sdk/k$e;

    iget-wide v2, v1, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    iput-wide v2, v0, Lcom/applovin/impl/sdk/k$e;->c:J

    iget-object v0, p1, Lcom/applovin/impl/sdk/k$d;->J:Lcom/applovin/impl/sdk/k$e;

    iget-wide v1, v1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    iput-wide v1, v0, Lcom/applovin/impl/sdk/k$e;->a:J

    :cond_130
    iget-object v0, p0, Lcom/applovin/impl/sdk/k;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->E()Lcom/applovin/impl/sdk/b/c;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/sdk/b/b;->eb:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/b/c;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/applovin/impl/sdk/k;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_15f

    const/4 v1, 0x0

    :try_start_147
    sput-object v0, Lcom/applovin/impl/sdk/k;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/applovin/impl/sdk/k;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v2, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v2, p1, Lcom/applovin/impl/sdk/k$d;->s:I

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    sput v0, Lcom/applovin/impl/sdk/k;->h:I
    :try_end_15b
    .catch Ljava/lang/Throwable; {:try_start_147 .. :try_end_15b} :catch_15c

    goto :goto_163

    :catch_15c
    sput v1, Lcom/applovin/impl/sdk/k;->h:I

    goto :goto_163

    :cond_15f
    sget v0, Lcom/applovin/impl/sdk/k;->h:I

    iput v0, p1, Lcom/applovin/impl/sdk/k$d;->s:I

    :goto_163
    iget-object v0, p0, Lcom/applovin/impl/sdk/k;->a:Lcom/applovin/impl/sdk/j;

    sget-object v1, Lcom/applovin/impl/sdk/b/b;->dO:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_17b

    iget-object v0, p0, Lcom/applovin/impl/sdk/k;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/applovin/sdk/AppLovinSdkUtils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p1, Lcom/applovin/impl/sdk/k$d;->C:Z

    :cond_17b
    iget-object v0, p0, Lcom/applovin/impl/sdk/k;->a:Lcom/applovin/impl/sdk/j;

    sget-object v1, Lcom/applovin/impl/sdk/b/b;->dP:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_191

    invoke-direct {p0}, Lcom/applovin/impl/sdk/k;->r()Z

    move-result v0

    iput-boolean v0, p1, Lcom/applovin/impl/sdk/k$d;->D:Z

    :cond_191
    iget-object v0, p0, Lcom/applovin/impl/sdk/k;->a:Lcom/applovin/impl/sdk/j;

    sget-object v1, Lcom/applovin/impl/sdk/b/b;->dQ:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1ad

    invoke-direct {p0}, Lcom/applovin/impl/sdk/k;->p()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1ad

    iput-object v0, p1, Lcom/applovin/impl/sdk/k$d;->G:Ljava/lang/String;

    :cond_1ad
    invoke-direct {p0}, Lcom/applovin/impl/sdk/k;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/applovin/impl/sdk/k$d;->l:Ljava/lang/String;

    iget-object v0, p0, Lcom/applovin/impl/sdk/k;->a:Lcom/applovin/impl/sdk/j;

    sget-object v1, Lcom/applovin/impl/sdk/b/b;->dT:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1c9

    invoke-static {}, Lcom/applovin/impl/sdk/utils/r;->d()Z

    move-result v0

    iput-boolean v0, p1, Lcom/applovin/impl/sdk/k$d;->E:Z

    :cond_1c9
    invoke-static {}, Lcom/applovin/impl/sdk/utils/g;->d()Z

    move-result v0

    if-eqz v0, :cond_1e1

    iget-object v0, p0, Lcom/applovin/impl/sdk/k;->c:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    if-eqz v0, :cond_1e1

    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    iput v0, p1, Lcom/applovin/impl/sdk/k$d;->F:I

    :cond_1e1
    iget-object v0, p0, Lcom/applovin/impl/sdk/k;->a:Lcom/applovin/impl/sdk/j;

    sget-object v1, Lcom/applovin/impl/sdk/b/b;->ec:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_205

    iget-object v0, p0, Lcom/applovin/impl/sdk/k;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->ae()Lcom/applovin/impl/sdk/utils/n;

    move-result-object v0

    if-eqz v0, :cond_205

    iget-object v0, p0, Lcom/applovin/impl/sdk/k;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->ae()Lcom/applovin/impl/sdk/utils/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/utils/n;->c()F

    move-result v0

    iput v0, p1, Lcom/applovin/impl/sdk/k$d;->O:F

    :cond_205
    iget-object v0, p0, Lcom/applovin/impl/sdk/k;->a:Lcom/applovin/impl/sdk/j;

    sget-object v1, Lcom/applovin/impl/sdk/b/b;->ed:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_229

    iget-object v0, p0, Lcom/applovin/impl/sdk/k;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->ae()Lcom/applovin/impl/sdk/utils/n;

    move-result-object v0

    if-eqz v0, :cond_229

    iget-object v0, p0, Lcom/applovin/impl/sdk/k;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->ae()Lcom/applovin/impl/sdk/utils/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/utils/n;->b()F

    move-result v0

    iput v0, p1, Lcom/applovin/impl/sdk/k$d;->P:F

    :cond_229
    iget-object v0, p0, Lcom/applovin/impl/sdk/k;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->af()Lcom/applovin/impl/sdk/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/e;->a()I

    move-result v0

    iput v0, p1, Lcom/applovin/impl/sdk/k$d;->R:I

    return-object p1
.end method

.method private a(I)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    const-string p1, "receiver"

    return-object p1

    :cond_6
    const/4 v0, 0x2

    if-ne p1, v0, :cond_c

    const-string p1, "speaker"

    return-object p1

    :cond_c
    const/4 v0, 0x4

    if-eq p1, v0, :cond_42

    const/4 v0, 0x3

    if-ne p1, v0, :cond_13

    goto :goto_42

    :cond_13
    const/16 v0, 0x8

    if-ne p1, v0, :cond_1a

    const-string p1, "bluetootha2dpoutput"

    return-object p1

    :cond_1a
    const/16 v0, 0xd

    if-eq p1, v0, :cond_3f

    const/16 v0, 0x13

    if-eq p1, v0, :cond_3f

    const/4 v0, 0x5

    if-eq p1, v0, :cond_3f

    const/4 v0, 0x6

    if-eq p1, v0, :cond_3f

    const/16 v0, 0xc

    if-eq p1, v0, :cond_3f

    const/16 v0, 0xb

    if-ne p1, v0, :cond_31

    goto :goto_3f

    :cond_31
    const/16 v0, 0x9

    if-eq p1, v0, :cond_3c

    const/16 v0, 0xa

    if-ne p1, v0, :cond_3a

    goto :goto_3c

    :cond_3a
    const/4 p1, 0x0

    return-object p1

    :cond_3c
    :goto_3c
    const-string p1, "hdmioutput"

    return-object p1

    :cond_3f
    :goto_3f
    const-string p1, "lineout"

    return-object p1

    :cond_42
    :goto_42
    const-string p1, "headphones"

    return-object p1
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/k;)Ljava/util/concurrent/atomic/AtomicReference;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/sdk/k;->i:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method private a(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/applovin/impl/sdk/k;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p1
    :try_end_b
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_b} :catch_f

    const/4 v1, 0x1

    if-ne p1, v1, :cond_f

    const/4 v0, 0x1

    :catch_f
    :cond_f
    return v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    invoke-static {p2}, Lcom/applovin/impl/sdk/utils/e;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_8
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p1, 0x1

    return p1

    :cond_1c
    const/4 p1, 0x0

    return p1
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    new-array v1, v1, [I

    fill-array-data v1, :array_30

    array-length v2, v1

    new-array v3, v0, [C

    const/4 v4, 0x0

    :goto_f
    if-ge v4, v0, :cond_29

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aput-char v5, v3, v4

    add-int/lit8 v5, v2, -0x1

    :goto_19
    if-ltz v5, :cond_26

    aget-char v6, v3, v4

    aget v7, v1, v5

    xor-int/2addr v6, v7

    int-to-char v6, v6

    aput-char v6, v3, v4

    add-int/lit8 v5, v5, -0x1

    goto :goto_19

    :cond_26
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    :cond_29
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v3}, Ljava/lang/String;-><init>([C)V

    return-object p1

    nop

    :array_30
    .array-data 4
        0xb
        0xc
        0xa
        0x3
        0x2
        0x1
        0xf
        0xa
        0xf
        0xe
    .end array-data
.end method

.method private g()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/applovin/impl/sdk/k;->a(Ljava/util/Map;ZZ)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private h()Lcom/applovin/impl/sdk/k$d;
    .registers 9

    new-instance v0, Lcom/applovin/impl/sdk/k$d;

    invoke-direct {v0}, Lcom/applovin/impl/sdk/k$d;-><init>()V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v1, v0, Lcom/applovin/impl/sdk/k$d;->c:I

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v1, v0, Lcom/applovin/impl/sdk/k$d;->e:Ljava/lang/String;

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    iput-object v1, v0, Lcom/applovin/impl/sdk/k$d;->f:Ljava/lang/String;

    sget-object v1, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    iput-object v1, v0, Lcom/applovin/impl/sdk/k$d;->g:Ljava/lang/String;

    invoke-direct {p0}, Lcom/applovin/impl/sdk/k;->v()Z

    move-result v1

    iput-boolean v1, v0, Lcom/applovin/impl/sdk/k$d;->A:Z

    invoke-direct {p0}, Lcom/applovin/impl/sdk/k;->l()Z

    move-result v1

    iput-boolean v1, v0, Lcom/applovin/impl/sdk/k$d;->N:Z

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    iput-object v1, v0, Lcom/applovin/impl/sdk/k$d;->k:Ljava/util/Locale;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v1, v0, Lcom/applovin/impl/sdk/k$d;->d:Ljava/lang/String;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v1, v0, Lcom/applovin/impl/sdk/k$d;->b:Ljava/lang/String;

    const-string v1, "android"

    iput-object v1, v0, Lcom/applovin/impl/sdk/k$d;->a:Ljava/lang/String;

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    iput-object v1, v0, Lcom/applovin/impl/sdk/k$d;->h:Ljava/lang/String;

    invoke-direct {p0}, Lcom/applovin/impl/sdk/k;->q()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/applovin/impl/sdk/k$d;->r:D

    iget-object v1, p0, Lcom/applovin/impl/sdk/k;->c:Landroid/content/Context;

    const-string v2, "sensor"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    if-eqz v1, :cond_55

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    if-eqz v1, :cond_52

    const/4 v1, 0x1

    goto :goto_53

    :cond_52
    const/4 v1, 0x0

    :goto_53
    iput-boolean v1, v0, Lcom/applovin/impl/sdk/k$d;->B:Z

    :cond_55
    iget-object v1, p0, Lcom/applovin/impl/sdk/k;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/sdk/k;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.permission.READ_PHONE_STATE"

    invoke-static {v3, v1, v2}, Lcom/applovin/impl/sdk/utils/l;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageManager;)I

    move-result v1

    if-nez v1, :cond_90

    iget-object v1, p0, Lcom/applovin/impl/sdk/k;->c:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_90

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/applovin/impl/sdk/k$d;->i:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    :try_start_85
    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/applovin/impl/sdk/k$d;->j:Ljava/lang/String;
    :try_end_8d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_85 .. :try_end_8d} :catch_8e

    goto :goto_90

    :catch_8e
    iput-object v1, v0, Lcom/applovin/impl/sdk/k$d;->j:Ljava/lang/String;

    :cond_90
    :goto_90
    iget-object v1, p0, Lcom/applovin/impl/sdk/k;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    iput v2, v0, Lcom/applovin/impl/sdk/k$d;->m:F

    iget v2, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v2, v0, Lcom/applovin/impl/sdk/k$d;->n:I

    iget v2, v1, Landroid/util/DisplayMetrics;->xdpi:F

    iput v2, v0, Lcom/applovin/impl/sdk/k$d;->o:F

    iget v1, v1, Landroid/util/DisplayMetrics;->ydpi:F

    iput v1, v0, Lcom/applovin/impl/sdk/k$d;->p:F

    iget-object v1, p0, Lcom/applovin/impl/sdk/k;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/g;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v1

    iget v2, v1, Landroid/graphics/Point;->x:I

    int-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-double v6, v1

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    iget v3, v0, Lcom/applovin/impl/sdk/k$d;->o:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v3

    iput-wide v1, v0, Lcom/applovin/impl/sdk/k$d;->q:D

    iget-object v1, p0, Lcom/applovin/impl/sdk/k;->a:Lcom/applovin/impl/sdk/j;

    sget-object v2, Lcom/applovin/impl/sdk/b/b;->dU:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_e4

    invoke-direct {p0}, Lcom/applovin/impl/sdk/k;->n()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/applovin/impl/sdk/k$d;->v:J

    :cond_e4
    iget-object v1, p0, Lcom/applovin/impl/sdk/k;->a:Lcom/applovin/impl/sdk/j;

    sget-object v2, Lcom/applovin/impl/sdk/b/b;->dV:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_fa

    invoke-direct {p0}, Lcom/applovin/impl/sdk/k;->o()F

    move-result v1

    iput v1, v0, Lcom/applovin/impl/sdk/k$d;->w:F

    :cond_fa
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lcom/applovin/impl/sdk/k$d;->Q:J

    iget-object v1, p0, Lcom/applovin/impl/sdk/k;->a:Lcom/applovin/impl/sdk/j;

    sget-object v2, Lcom/applovin/impl/sdk/b/b;->dY:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_11a

    iget-object v1, p0, Lcom/applovin/impl/sdk/k;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/applovin/impl/adview/c;->a(Landroid/content/Context;)V

    :cond_11a
    return-object v0
.end method

.method private i()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/k;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/r;->b(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    const-string v0, "portrait"

    goto :goto_14

    :cond_c
    const/4 v1, 0x2

    if-ne v0, v1, :cond_12

    const-string v0, "landscape"

    goto :goto_14

    :cond_12
    const-string v0, "none"

    :goto_14
    return-object v0
.end method

.method private j()Lcom/applovin/impl/sdk/k$b;
    .registers 9

    new-instance v0, Lcom/applovin/impl/sdk/k$b;

    invoke-direct {v0}, Lcom/applovin/impl/sdk/k$b;-><init>()V

    iget-object v1, p0, Lcom/applovin/impl/sdk/k;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/sdk/k;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    const/4 v5, 0x0

    :try_start_1d
    iget-object v6, p0, Lcom/applovin/impl/sdk/k;->c:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_28} :catch_2f

    :try_start_28
    iget-object v7, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v7}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_2e} :catch_30

    goto :goto_30

    :catch_2f
    move-object v6, v5

    :catch_30
    :goto_30
    iget-object v7, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v7, v0, Lcom/applovin/impl/sdk/k$b;->c:Ljava/lang/String;

    const-string v7, ""

    if-eqz v5, :cond_39

    goto :goto_3a

    :cond_39
    move-object v5, v7

    :goto_3a
    iput-object v5, v0, Lcom/applovin/impl/sdk/k$b;->d:Ljava/lang/String;

    iput-wide v3, v0, Lcom/applovin/impl/sdk/k$b;->g:J

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/applovin/impl/sdk/k$b;->a:Ljava/lang/String;

    if-eqz v6, :cond_4c

    iget-object v7, v6, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    :cond_4c
    iput-object v7, v0, Lcom/applovin/impl/sdk/k$b;->b:Ljava/lang/String;

    sget-object v1, Lcom/applovin/impl/sdk/b/d;->h:Lcom/applovin/impl/sdk/b/d;

    iget-object v2, p0, Lcom/applovin/impl/sdk/k;->a:Lcom/applovin/impl/sdk/j;

    invoke-static {v1, v2}, Lcom/applovin/impl/sdk/utils/r;->a(Lcom/applovin/impl/sdk/b/d;Lcom/applovin/impl/sdk/j;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/applovin/impl/sdk/k$b;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/applovin/impl/sdk/k;->a:Lcom/applovin/impl/sdk/j;

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/r;->b(Lcom/applovin/impl/sdk/j;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/applovin/impl/sdk/k$b;->f:Z

    return-object v0
.end method

.method private k()Lcom/applovin/impl/sdk/k$a;
    .registers 6

    invoke-direct {p0}, Lcom/applovin/impl/sdk/k;->l()Z

    move-result v0

    const-string v1, "Could not collect Google Advertising ID - this will negatively impact your eCPMs! Please integrate the Google Play Services SDK into your application. More info can be found online at http://developer.android.com/google/play-services/setup.html. If you\'re sure you\'ve integrated the SDK and are still seeing this message, you may need to add a ProGuard exception: -keep public class com.google.android.gms.** { public protected *; }"

    const-string v2, "DataCollector"

    if-eqz v0, :cond_29

    :try_start_a
    new-instance v0, Lcom/applovin/impl/sdk/k$a;

    invoke-direct {v0}, Lcom/applovin/impl/sdk/k$a;-><init>()V

    iget-object v3, p0, Lcom/applovin/impl/sdk/k;->c:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v4

    iput-boolean v4, v0, Lcom/applovin/impl/sdk/k$a;->a:Z

    invoke-virtual {v3}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/applovin/impl/sdk/k$a;->b:Ljava/lang/String;
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_21} :catch_22

    return-object v0

    :catch_22
    move-exception v0

    iget-object v3, p0, Lcom/applovin/impl/sdk/k;->b:Lcom/applovin/impl/sdk/q;

    invoke-virtual {v3, v2, v1, v0}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2c

    :cond_29
    invoke-static {v2, v1}, Lcom/applovin/impl/sdk/q;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2c
    new-instance v0, Lcom/applovin/impl/sdk/k$a;

    invoke-direct {v0}, Lcom/applovin/impl/sdk/k$a;-><init>()V

    return-object v0
.end method

.method private l()Z
    .registers 2

    const-string v0, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/r;->e(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private m()Lcom/applovin/impl/sdk/k$c;
    .registers 6

    new-instance v0, Lcom/applovin/impl/sdk/k$c;

    invoke-direct {v0}, Lcom/applovin/impl/sdk/k$c;-><init>()V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/applovin/impl/sdk/k;->c:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, -0x1

    if-eqz v1, :cond_1d

    const-string v3, "level"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    goto :goto_1e

    :cond_1d
    const/4 v3, -0x1

    :goto_1e
    if-eqz v1, :cond_27

    const-string v4, "scale"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    goto :goto_28

    :cond_27
    const/4 v4, -0x1

    :goto_28
    if-lez v3, :cond_37

    if-lez v4, :cond_37

    int-to-float v3, v3

    int-to-float v4, v4

    div-float/2addr v3, v4

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float v3, v3, v4

    float-to-int v3, v3

    iput v3, v0, Lcom/applovin/impl/sdk/k$c;->b:I

    goto :goto_39

    :cond_37
    iput v2, v0, Lcom/applovin/impl/sdk/k$c;->b:I

    :goto_39
    if-eqz v1, :cond_41

    const-string v3, "status"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    :cond_41
    iput v2, v0, Lcom/applovin/impl/sdk/k$c;->a:I

    return-object v0
.end method

.method private n()J
    .registers 6

    iget-object v0, p0, Lcom/applovin/impl/sdk/k;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enabled_accessibility_services"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/o;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "AccessibilityMenuService"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    const-wide/16 v1, 0x100

    goto :goto_27

    :cond_25
    const-wide/16 v1, 0x0

    :goto_27
    const-string v3, "SelectToSpeakService"

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    const-wide/16 v3, 0x200

    or-long/2addr v1, v3

    :cond_32
    const-string v3, "SoundAmplifierService"

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    const-wide/16 v3, 0x2

    or-long/2addr v1, v3

    :cond_3d
    const-string v3, "SpeechToTextAccessibilityService"

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    const-wide/16 v3, 0x80

    or-long/2addr v1, v3

    :cond_48
    const-string v3, "SwitchAccessService"

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53

    const-wide/16 v3, 0x4

    or-long/2addr v1, v3

    :cond_53
    iget-object v0, p0, Lcom/applovin/impl/sdk/k;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v3, 0x20

    if-ne v0, v3, :cond_68

    const-wide/16 v3, 0x400

    or-long/2addr v1, v3

    :cond_68
    const-string v0, "accessibility_enabled"

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/k;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_73

    const-wide/16 v3, 0x8

    or-long/2addr v1, v3

    :cond_73
    const-string v0, "touch_exploration_enabled"

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/k;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7e

    const-wide/16 v3, 0x10

    or-long/2addr v1, v3

    :cond_7e
    invoke-static {}, Lcom/applovin/impl/sdk/utils/g;->d()Z

    move-result v0

    if-eqz v0, :cond_9a

    const-string v0, "accessibility_display_inversion_enabled"

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/k;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8f

    const-wide/16 v3, 0x20

    or-long/2addr v1, v3

    :cond_8f
    const-string v0, "skip_first_use_hints"

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/k;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9a

    const-wide/16 v3, 0x40

    or-long/2addr v1, v3

    :cond_9a
    return-wide v1
.end method

.method private o()F
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/k;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "font_scale"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;)F

    move-result v0
    :try_end_c
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    :catch_d
    move-exception v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/k;->b:Lcom/applovin/impl/sdk/q;

    const-string v2, "DataCollector"

    const-string v3, "Error collecting font scale"

    invoke-virtual {v1, v2, v3, v0}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method private p()Ljava/lang/String;
    .registers 8

    iget-object v0, p0, Lcom/applovin/impl/sdk/k;->c:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz v0, :cond_85

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/applovin/impl/sdk/utils/g;->e()Z

    move-result v2

    const-string v3, ","

    if-eqz v2, :cond_3b

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v0

    array-length v2, v0

    const/4 v4, 0x0

    :goto_20
    if-ge v4, v2, :cond_54

    aget-object v5, v0, v4

    invoke-virtual {v5}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/applovin/impl/sdk/k;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_38

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_38
    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    :cond_3b
    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v2

    if-eqz v2, :cond_49

    const-string v2, "headphones"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_49
    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v0

    if-eqz v0, :cond_54

    const-string v0, "bluetootha2dpoutput"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_71

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v2, 0x2c

    if-ne v0, v2, :cond_71

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_71
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_84

    iget-object v1, p0, Lcom/applovin/impl/sdk/k;->b:Lcom/applovin/impl/sdk/q;

    const-string v2, "DataCollector"

    const-string v3, "No sound outputs detected"

    invoke-virtual {v1, v2, v3}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_84
    return-object v0

    :cond_85
    const/4 v0, 0x0

    return-object v0
.end method

.method private q()D
    .registers 7

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    const-wide v4, 0x414b774000000000L    # 3600000.0

    div-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private r()Z
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/k;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Lcom/applovin/impl/sdk/utils/g;->d()Z

    move-result v1

    if-eqz v1, :cond_13

    const-string v1, "android.software.leanback"

    :goto_e
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_13
    const-string v1, "android.hardware.type.television"

    goto :goto_e
.end method

.method private s()Z
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Lcom/applovin/impl/sdk/k;->t()Z

    move-result v1

    if-nez v1, :cond_d

    invoke-direct {p0}, Lcom/applovin/impl/sdk/k;->u()Z

    move-result v1
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_b} :catch_e

    if-eqz v1, :cond_e

    :cond_d
    const/4 v0, 0x1

    :catch_e
    :cond_e
    return v0
.end method

.method private t()Z
    .registers 3

    sget-object v0, Landroid/os/Build;->TAGS:Ljava/lang/String;

    if-eqz v0, :cond_12

    const-string v1, "lz}$blpz"

    invoke-direct {p0, v1}, Lcom/applovin/impl/sdk/k;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method private u()Z
    .registers 10

    const-string v0, "&zpz}ld&hyy&Z|yl{|zl{\'hyb"

    const-string v1, "&zk`g&z|"

    const-string v2, "&zpz}ld&k`g&z|"

    const-string v3, "&zpz}ld&qk`g&z|"

    const-string v4, "&mh}h&efjhe&qk`g&z|"

    const-string v5, "&mh}h&efjhe&k`g&z|"

    const-string v6, "&zpz}ld&zm&qk`g&z|"

    const-string v7, "&zpz}ld&k`g&oh`ezhol&z|"

    const-string v8, "&mh}h&efjhe&z|"

    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_19
    if-ge v3, v1, :cond_31

    aget-object v4, v0, v3

    invoke-direct {p0, v4}, Lcom/applovin/impl/sdk/k;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2e

    const/4 v0, 0x1

    return v0

    :cond_2e
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :cond_31
    return v2
.end method

.method private v()Z
    .registers 3

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "ranchu,goldfish,vbox"

    invoke-direct {p0, v0, v1}, Lcom/applovin/impl/sdk/k;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2b

    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string v1, "generic,vbox"

    invoke-direct {p0, v0, v1}, Lcom/applovin/impl/sdk/k;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2b

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "Genymotion"

    invoke-direct {p0, v0, v1}, Lcom/applovin/impl/sdk/k;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2b

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "Android SDK built for x86"

    invoke-direct {p0, v0, v1}, Lcom/applovin/impl/sdk/k;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    goto :goto_2b

    :cond_29
    const/4 v0, 0x0

    goto :goto_2c

    :cond_2b
    :goto_2b
    const/4 v0, 0x1

    :goto_2c
    return v0
.end method


# virtual methods
.method a()Ljava/lang/String;
    .registers 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lcom/applovin/impl/sdk/k;->g()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/k;->a:Lcom/applovin/impl/sdk/j;

    sget-object v2, Lcom/applovin/impl/sdk/b/b;->eB:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3a

    iget-object v1, p0, Lcom/applovin/impl/sdk/k;->a:Lcom/applovin/impl/sdk/j;

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/r;->a(Lcom/applovin/impl/sdk/j;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/applovin/impl/sdk/k;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/j;->t()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v1, v2}, Lcom/applovin/impl/sdk/utils/m;->a(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    :cond_3a
    return-object v0
.end method

.method public a(Ljava/util/Map;ZZ)Ljava/util/Map;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZZ)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/k;->c()Lcom/applovin/impl/sdk/k$d;

    move-result-object v1

    iget-object v2, v1, Lcom/applovin/impl/sdk/k$d;->e:Ljava/lang/String;

    invoke-static {v2}, Lcom/applovin/impl/sdk/utils/o;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "brand"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v1, Lcom/applovin/impl/sdk/k$d;->f:Ljava/lang/String;

    invoke-static {v2}, Lcom/applovin/impl/sdk/utils/o;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "brand_name"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v1, Lcom/applovin/impl/sdk/k$d;->g:Ljava/lang/String;

    invoke-static {v2}, Lcom/applovin/impl/sdk/utils/o;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "hardware"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, v1, Lcom/applovin/impl/sdk/k$d;->c:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "api_level"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v1, Lcom/applovin/impl/sdk/k$d;->j:Ljava/lang/String;

    invoke-static {v2}, Lcom/applovin/impl/sdk/utils/o;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "carrier"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v1, Lcom/applovin/impl/sdk/k$d;->i:Ljava/lang/String;

    invoke-static {v2}, Lcom/applovin/impl/sdk/utils/o;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "country_code"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v1, Lcom/applovin/impl/sdk/k$d;->k:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/applovin/impl/sdk/utils/o;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "locale"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v1, Lcom/applovin/impl/sdk/k$d;->d:Ljava/lang/String;

    invoke-static {v2}, Lcom/applovin/impl/sdk/utils/o;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "model"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v1, Lcom/applovin/impl/sdk/k$d;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/applovin/impl/sdk/utils/o;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "os"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v1, Lcom/applovin/impl/sdk/k$d;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/applovin/impl/sdk/utils/o;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "platform"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v1, Lcom/applovin/impl/sdk/k$d;->h:Ljava/lang/String;

    invoke-static {v2}, Lcom/applovin/impl/sdk/utils/o;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "revision"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v1, Lcom/applovin/impl/sdk/k$d;->l:Ljava/lang/String;

    const-string v3, "orientation_lock"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v2, v1, Lcom/applovin/impl/sdk/k$d;->r:D

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    const-string v3, "tz_offset"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v2, v1, Lcom/applovin/impl/sdk/k$d;->N:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "aida"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, v1, Lcom/applovin/impl/sdk/k$d;->s:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "wvvc"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, v1, Lcom/applovin/impl/sdk/k$d;->m:F

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    const-string v3, "adns"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, v1, Lcom/applovin/impl/sdk/k$d;->n:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "adnsd"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, v1, Lcom/applovin/impl/sdk/k$d;->o:F

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    const-string v3, "xdpi"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, v1, Lcom/applovin/impl/sdk/k$d;->p:F

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ydpi"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v2, v1, Lcom/applovin/impl/sdk/k$d;->q:D

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    const-string v3, "screen_size_in"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v2, v1, Lcom/applovin/impl/sdk/k$d;->A:Z

    invoke-static {v2}, Lcom/applovin/impl/sdk/utils/o;->a(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "sim"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v2, v1, Lcom/applovin/impl/sdk/k$d;->B:Z

    invoke-static {v2}, Lcom/applovin/impl/sdk/utils/o;->a(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "gy"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v2, v1, Lcom/applovin/impl/sdk/k$d;->C:Z

    invoke-static {v2}, Lcom/applovin/impl/sdk/utils/o;->a(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "is_tablet"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v2, v1, Lcom/applovin/impl/sdk/k$d;->D:Z

    invoke-static {v2}, Lcom/applovin/impl/sdk/utils/o;->a(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "tv"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v2, v1, Lcom/applovin/impl/sdk/k$d;->E:Z

    invoke-static {v2}, Lcom/applovin/impl/sdk/utils/o;->a(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "vs"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, v1, Lcom/applovin/impl/sdk/k$d;->F:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "lpm"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v2, v1, Lcom/applovin/impl/sdk/k$d;->H:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "fs"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v2, v1, Lcom/applovin/impl/sdk/k$d;->I:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "tds"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v1, Lcom/applovin/impl/sdk/k$d;->J:Lcom/applovin/impl/sdk/k$e;

    iget-wide v2, v2, Lcom/applovin/impl/sdk/k$e;->b:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "fm"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v1, Lcom/applovin/impl/sdk/k$d;->J:Lcom/applovin/impl/sdk/k$e;

    iget-wide v2, v2, Lcom/applovin/impl/sdk/k$e;->a:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "tm"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v1, Lcom/applovin/impl/sdk/k$d;->J:Lcom/applovin/impl/sdk/k$e;

    iget-wide v2, v2, Lcom/applovin/impl/sdk/k$e;->c:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "lmt"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v1, Lcom/applovin/impl/sdk/k$d;->J:Lcom/applovin/impl/sdk/k$e;

    iget-boolean v2, v2, Lcom/applovin/impl/sdk/k$e;->d:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "lm"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v2, v1, Lcom/applovin/impl/sdk/k$d;->t:Z

    invoke-static {v2}, Lcom/applovin/impl/sdk/utils/o;->a(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "adr"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, v1, Lcom/applovin/impl/sdk/k$d;->x:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "volume"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, v1, Lcom/applovin/impl/sdk/k$d;->y:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "sb"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v2, v1, Lcom/applovin/impl/sdk/k$d;->v:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "af"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, v1, Lcom/applovin/impl/sdk/k$d;->w:F

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    const-string v3, "font"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v1, Lcom/applovin/impl/sdk/k$d;->z:Ljava/lang/String;

    invoke-static {v2}, Lcom/applovin/impl/sdk/utils/o;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ua"

    invoke-static {v3, v2, v0}, Lcom/applovin/impl/sdk/utils/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iget-object v2, v1, Lcom/applovin/impl/sdk/k$d;->G:Ljava/lang/String;

    invoke-static {v2}, Lcom/applovin/impl/sdk/utils/o;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "so"

    invoke-static {v3, v2, v0}, Lcom/applovin/impl/sdk/utils/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iget-wide v2, v1, Lcom/applovin/impl/sdk/k$d;->Q:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "bt_ms"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, v1, Lcom/applovin/impl/sdk/k$d;->R:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "mute_switch"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, v1, Lcom/applovin/impl/sdk/k$d;->O:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1e6

    iget v2, v1, Lcom/applovin/impl/sdk/k$d;->O:F

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    const-string v4, "da"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1e6
    iget v2, v1, Lcom/applovin/impl/sdk/k$d;->P:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1f7

    iget v2, v1, Lcom/applovin/impl/sdk/k$d;->P:F

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    const-string v3, "dm"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f7
    iget-object v2, v1, Lcom/applovin/impl/sdk/k$d;->u:Lcom/applovin/impl/sdk/k$c;

    if-eqz v2, :cond_211

    iget v3, v2, Lcom/applovin/impl/sdk/k$c;->a:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "act"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, v2, Lcom/applovin/impl/sdk/k$c;->b:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "acm"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_211
    iget-object v2, v1, Lcom/applovin/impl/sdk/k$d;->K:Ljava/lang/Boolean;

    if-eqz v2, :cond_21e

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "huc"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_21e
    iget-object v2, v1, Lcom/applovin/impl/sdk/k$d;->L:Ljava/lang/Boolean;

    if-eqz v2, :cond_22b

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "aru"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_22b
    iget-object v1, v1, Lcom/applovin/impl/sdk/k$d;->M:Ljava/lang/Boolean;

    if-eqz v1, :cond_238

    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "dns"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_238
    iget-object v1, p0, Lcom/applovin/impl/sdk/k;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/g;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v1

    iget v2, v1, Landroid/graphics/Point;->x:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "dx"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "dy"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "accept"

    const-string v2, "custom_size,launch_app,video"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/applovin/impl/sdk/k;->a:Lcom/applovin/impl/sdk/j;

    sget-object v2, Lcom/applovin/impl/sdk/b/b;->Q:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "api_did"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/applovin/sdk/AppLovinSdk;->VERSION:Ljava/lang/String;

    const-string v2, "sdk_version"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x83

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "build"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "format"

    const-string v2, "json"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/k;->d()Lcom/applovin/impl/sdk/k$b;

    move-result-object v1

    iget-object v2, v1, Lcom/applovin/impl/sdk/k$b;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/applovin/impl/sdk/utils/o;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "app_version"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v2, v1, Lcom/applovin/impl/sdk/k$b;->g:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ia"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v1, Lcom/applovin/impl/sdk/k$b;->e:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "tg"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v1, Lcom/applovin/impl/sdk/k$b;->d:Ljava/lang/String;

    const-string v3, "installer_name"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v2, v1, Lcom/applovin/impl/sdk/k$b;->h:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "test_ads"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, v1, Lcom/applovin/impl/sdk/k$b;->f:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "debug"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/applovin/impl/sdk/k;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/j;->n()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/o;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mediation_provider"

    invoke-static {v2, v1, v0}, Lcom/applovin/impl/sdk/utils/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/k;->a:Lcom/applovin/impl/sdk/j;

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/h;->f(Lcom/applovin/impl/sdk/j;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "network"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/applovin/impl/sdk/k;->a:Lcom/applovin/impl/sdk/j;

    sget-object v2, Lcom/applovin/impl/sdk/b/b;->dM:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "plugin_version"

    invoke-static {v2, v1, v0}, Lcom/applovin/impl/sdk/utils/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    const-string v1, "preloading"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/applovin/impl/sdk/k;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/j;->J()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    const-string v1, "first_install"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/applovin/impl/sdk/k;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/j;->K()Z

    move-result p2

    const/4 v1, 0x1

    xor-int/2addr p2, v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    const-string v2, "first_install_v2"

    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/applovin/impl/sdk/k;->a:Lcom/applovin/impl/sdk/j;

    sget-object v2, Lcom/applovin/impl/sdk/b/b;->eA:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {p2, v2}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_330

    iget-object p2, p0, Lcom/applovin/impl/sdk/k;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/j;->t()Ljava/lang/String;

    move-result-object p2

    const-string v2, "sdk_key"

    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_330
    iget-object p2, p0, Lcom/applovin/impl/sdk/k;->a:Lcom/applovin/impl/sdk/j;

    sget-object v2, Lcom/applovin/impl/sdk/b/b;->U:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {p2, v2}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object p2

    const-string v2, "sc"

    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/applovin/impl/sdk/k;->a:Lcom/applovin/impl/sdk/j;

    sget-object v2, Lcom/applovin/impl/sdk/b/b;->V:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {p2, v2}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object p2

    const-string v2, "sc2"

    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/applovin/impl/sdk/k;->a:Lcom/applovin/impl/sdk/j;

    sget-object v2, Lcom/applovin/impl/sdk/b/b;->W:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {p2, v2}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object p2

    const-string v2, "sc3"

    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/applovin/impl/sdk/k;->a:Lcom/applovin/impl/sdk/j;

    sget-object v2, Lcom/applovin/impl/sdk/b/b;->X:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {p2, v2}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/applovin/impl/sdk/utils/o;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "server_installed_at"

    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/applovin/impl/sdk/k;->a:Lcom/applovin/impl/sdk/j;

    sget-object v2, Lcom/applovin/impl/sdk/b/d;->y:Lcom/applovin/impl/sdk/b/d;

    invoke-virtual {p2, v2}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/d;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/applovin/impl/sdk/utils/o;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "persisted_data"

    invoke-static {v2, p2, v0}, Lcom/applovin/impl/sdk/utils/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iget-object p2, p0, Lcom/applovin/impl/sdk/k;->c:Landroid/content/Context;

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v2, p2}, Lcom/applovin/impl/sdk/utils/g;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p2

    const-string v2, "v1"

    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "true"

    const-string v2, "v2"

    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "v3"

    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "v4"

    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "v5"

    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/applovin/impl/sdk/k;->a:Lcom/applovin/impl/sdk/j;

    sget-object v2, Lcom/applovin/impl/sdk/b/b;->eh:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {p2, v2}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_414

    iget-object p2, p0, Lcom/applovin/impl/sdk/k;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/j;->N()Lcom/applovin/impl/sdk/c/h;

    move-result-object p2

    sget-object v2, Lcom/applovin/impl/sdk/c/g;->b:Lcom/applovin/impl/sdk/c/g;

    invoke-virtual {p2, v2}, Lcom/applovin/impl/sdk/c/h;->b(Lcom/applovin/impl/sdk/c/g;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "li"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/applovin/impl/sdk/c/g;->d:Lcom/applovin/impl/sdk/c/g;

    invoke-virtual {p2, v2}, Lcom/applovin/impl/sdk/c/h;->b(Lcom/applovin/impl/sdk/c/g;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "si"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/applovin/impl/sdk/c/g;->h:Lcom/applovin/impl/sdk/c/g;

    invoke-virtual {p2, v2}, Lcom/applovin/impl/sdk/c/h;->b(Lcom/applovin/impl/sdk/c/g;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pf"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/applovin/impl/sdk/c/g;->o:Lcom/applovin/impl/sdk/c/g;

    invoke-virtual {p2, v2}, Lcom/applovin/impl/sdk/c/h;->b(Lcom/applovin/impl/sdk/c/g;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "mpf"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/applovin/impl/sdk/c/g;->i:Lcom/applovin/impl/sdk/c/g;

    invoke-virtual {p2, v2}, Lcom/applovin/impl/sdk/c/h;->b(Lcom/applovin/impl/sdk/c/g;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "gpf"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/applovin/impl/sdk/c/g;->m:Lcom/applovin/impl/sdk/c/g;

    invoke-virtual {p2, v2}, Lcom/applovin/impl/sdk/c/h;->b(Lcom/applovin/impl/sdk/c/g;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string v2, "asoac"

    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_414
    iget-object p2, p0, Lcom/applovin/impl/sdk/k;->c:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/applovin/impl/sdk/utils/o;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "vz"

    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_448

    iget-object p2, p0, Lcom/applovin/impl/sdk/k;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/applovin/impl/sdk/k$a;

    if-eqz p2, :cond_433

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/k;->f()V

    goto :goto_452

    :cond_433
    invoke-static {}, Lcom/applovin/impl/sdk/utils/r;->b()Z

    move-result p2

    if-eqz p2, :cond_448

    new-instance p2, Lcom/applovin/impl/sdk/k$a;

    invoke-direct {p2}, Lcom/applovin/impl/sdk/k$a;-><init>()V

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p3

    const-string v1, "inc"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_452

    :cond_448
    iget-object p2, p0, Lcom/applovin/impl/sdk/k;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/j;->P()Lcom/applovin/impl/sdk/k;

    move-result-object p2

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/k;->e()Lcom/applovin/impl/sdk/k$a;

    move-result-object p2

    :goto_452
    iget-object p3, p2, Lcom/applovin/impl/sdk/k$a;->b:Ljava/lang/String;

    invoke-static {p3}, Lcom/applovin/impl/sdk/utils/o;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_45f

    const-string v1, "idfa"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_45f
    iget-boolean p2, p2, Lcom/applovin/impl/sdk/k$a;->a:Z

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p2

    const-string p3, "dnt"

    invoke-interface {v0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/applovin/impl/sdk/k;->a:Lcom/applovin/impl/sdk/j;

    sget-object p3, Lcom/applovin/impl/sdk/b/b;->dF:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {p2, p3}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_485

    iget-object p2, p0, Lcom/applovin/impl/sdk/k;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/j;->i()Ljava/lang/String;

    move-result-object p2

    const-string p3, "cuid"

    invoke-static {p3, p2, v0}, Lcom/applovin/impl/sdk/utils/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_485
    iget-object p2, p0, Lcom/applovin/impl/sdk/k;->a:Lcom/applovin/impl/sdk/j;

    sget-object p3, Lcom/applovin/impl/sdk/b/b;->dI:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {p2, p3}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_4a0

    iget-object p2, p0, Lcom/applovin/impl/sdk/k;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/j;->j()Ljava/lang/String;

    move-result-object p2

    const-string p3, "compass_random_token"

    invoke-interface {v0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4a0
    iget-object p2, p0, Lcom/applovin/impl/sdk/k;->a:Lcom/applovin/impl/sdk/j;

    sget-object p3, Lcom/applovin/impl/sdk/b/b;->dK:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {p2, p3}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_4bb

    iget-object p2, p0, Lcom/applovin/impl/sdk/k;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/j;->k()Ljava/lang/String;

    move-result-object p2

    const-string p3, "applovin_random_token"

    invoke-interface {v0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4bb
    if-eqz p1, :cond_4c0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_4c0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "rid"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/applovin/impl/sdk/k;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/j;->L()Lcom/applovin/impl/sdk/network/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/network/a;->a()Lcom/applovin/impl/sdk/network/a$b;

    move-result-object p1

    if-eqz p1, :cond_509

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/network/a$b;->a()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string p3, "lrm_ts_ms"

    invoke-interface {v0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/network/a$b;->b()Ljava/lang/String;

    move-result-object p2

    const-string p3, "lrm_url"

    invoke-interface {v0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/network/a$b;->d()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string p3, "lrm_ct_ms"

    invoke-interface {v0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/network/a$b;->c()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "lrm_rs"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_509
    return-object v0
.end method

.method public b()Lcom/applovin/impl/sdk/k$d;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/k;->d:Lcom/applovin/impl/sdk/k$d;

    return-object v0
.end method

.method public c()Lcom/applovin/impl/sdk/k$d;
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/k;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/applovin/impl/sdk/k;->d:Lcom/applovin/impl/sdk/k$d;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/k$d;->b()Lcom/applovin/impl/sdk/k$d;

    move-result-object v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_f

    invoke-direct {p0, v1}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/sdk/k$d;)Lcom/applovin/impl/sdk/k$d;

    move-result-object v0

    return-object v0

    :catchall_f
    move-exception v1

    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public d()Lcom/applovin/impl/sdk/k$b;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/k;->f:Lcom/applovin/impl/sdk/k$b;

    return-object v0
.end method

.method public e()Lcom/applovin/impl/sdk/k$a;
    .registers 5

    invoke-direct {p0}, Lcom/applovin/impl/sdk/k;->k()Lcom/applovin/impl/sdk/k$a;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/k;->a:Lcom/applovin/impl/sdk/j;

    sget-object v2, Lcom/applovin/impl/sdk/b/b;->dE:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2d

    iget-boolean v1, v0, Lcom/applovin/impl/sdk/k$a;->a:Z

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/applovin/impl/sdk/k;->a:Lcom/applovin/impl/sdk/j;

    sget-object v2, Lcom/applovin/impl/sdk/b/b;->dD:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_32

    const-string v1, ""

    iput-object v1, v0, Lcom/applovin/impl/sdk/k$a;->b:Ljava/lang/String;

    goto :goto_32

    :cond_2d
    new-instance v0, Lcom/applovin/impl/sdk/k$a;

    invoke-direct {v0}, Lcom/applovin/impl/sdk/k$a;-><init>()V

    :cond_32
    :goto_32
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/k;->d()Lcom/applovin/impl/sdk/k$b;

    move-result-object v1

    iget-object v2, v0, Lcom/applovin/impl/sdk/k$a;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/applovin/impl/sdk/utils/o;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4f

    iget-object v2, p0, Lcom/applovin/impl/sdk/k;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/j;->l()Lcom/applovin/sdk/AppLovinSdkSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applovin/sdk/AppLovinSdkSettings;->getTestDeviceAdvertisingIds()Ljava/util/List;

    move-result-object v2

    iget-object v3, v0, Lcom/applovin/impl/sdk/k$a;->b:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_50

    :cond_4f
    const/4 v2, 0x0

    :goto_50
    iput-boolean v2, v1, Lcom/applovin/impl/sdk/k$b;->h:Z

    return-object v0
.end method

.method public f()V
    .registers 5

    iget-object v0, p0, Lcom/applovin/impl/sdk/k;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->M()Lcom/applovin/impl/sdk/d/s;

    move-result-object v0

    new-instance v1, Lcom/applovin/impl/sdk/d/i;

    iget-object v2, p0, Lcom/applovin/impl/sdk/k;->a:Lcom/applovin/impl/sdk/j;

    new-instance v3, Lcom/applovin/impl/sdk/k$1;

    invoke-direct {v3, p0}, Lcom/applovin/impl/sdk/k$1;-><init>(Lcom/applovin/impl/sdk/k;)V

    invoke-direct {v1, v2, v3}, Lcom/applovin/impl/sdk/d/i;-><init>(Lcom/applovin/impl/sdk/j;Lcom/applovin/impl/sdk/d/i$a;)V

    sget-object v2, Lcom/applovin/impl/sdk/d/s$a;->d:Lcom/applovin/impl/sdk/d/s$a;

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/d/s;->a(Lcom/applovin/impl/sdk/d/a;Lcom/applovin/impl/sdk/d/s$a;)V

    return-void
.end method
