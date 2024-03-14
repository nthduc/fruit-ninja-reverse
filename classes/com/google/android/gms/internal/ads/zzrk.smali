.class public final Lcom/google/android/gms/internal/ads/zzrk;
.super Ljava/lang/Thread;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final lock:Ljava/lang/Object;

.field private started:Z

.field private final zzbsf:I

.field private final zzbsh:I

.field private final zzbsi:Z

.field private zzbtf:Z

.field private zzbtg:Z

.field private final zzbth:Lcom/google/android/gms/internal/ads/zzrd;

.field private final zzbti:I

.field private final zzbtj:I

.field private final zzbtk:I

.field private final zzbtl:I

.field private final zzbtm:I

.field private final zzbtn:I

.field private final zzbto:Ljava/lang/String;

.field private final zzbtp:Z

.field private final zzbtq:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzrd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzrd;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzrk;-><init>(Lcom/google/android/gms/internal/ads/zzrd;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzrd;)V
    .registers 3
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzrk;->started:Z

    .line 5
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzrk;->zzbtf:Z

    .line 6
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzrk;->zzbtg:Z

    .line 7
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrk;->zzbth:Lcom/google/android/gms/internal/ads/zzrd;

    .line 8
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrk;->lock:Ljava/lang/Object;

    .line 9
    sget-object p1, Lcom/google/android/gms/internal/ads/zzacq;->zzdat:Lcom/google/android/gms/internal/ads/zzaci;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaci;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzrk;->zzbsf:I

    .line 10
    sget-object p1, Lcom/google/android/gms/internal/ads/zzacq;->zzdaq:Lcom/google/android/gms/internal/ads/zzaci;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaci;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzrk;->zzbtj:I

    .line 11
    sget-object p1, Lcom/google/android/gms/internal/ads/zzacq;->zzdau:Lcom/google/android/gms/internal/ads/zzaci;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaci;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzrk;->zzbsh:I

    .line 12
    sget-object p1, Lcom/google/android/gms/internal/ads/zzacq;->zzdas:Lcom/google/android/gms/internal/ads/zzaci;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaci;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzrk;->zzbtk:I

    .line 13
    sget-object p1, Lcom/google/android/gms/internal/ads/zzabb;->zzcnd:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object p1

    .line 15
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzrk;->zzbtl:I

    .line 16
    sget-object p1, Lcom/google/android/gms/internal/ads/zzabb;->zzcne:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 17
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object p1

    .line 18
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzrk;->zzbtm:I

    .line 19
    sget-object p1, Lcom/google/android/gms/internal/ads/zzabb;->zzcnf:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 20
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object p1

    .line 21
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzrk;->zzbtn:I

    .line 22
    sget-object p1, Lcom/google/android/gms/internal/ads/zzacq;->zzdav:Lcom/google/android/gms/internal/ads/zzaci;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaci;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzrk;->zzbti:I

    .line 23
    sget-object p1, Lcom/google/android/gms/internal/ads/zzabb;->zzcnh:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 24
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object p1

    .line 25
    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrk;->zzbto:Ljava/lang/String;

    .line 26
    sget-object p1, Lcom/google/android/gms/internal/ads/zzabb;->zzcni:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 27
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object p1

    .line 28
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzrk;->zzbtp:Z

    .line 29
    sget-object p1, Lcom/google/android/gms/internal/ads/zzabb;->zzcnj:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 30
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object p1

    .line 31
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzrk;->zzbsi:Z

    .line 32
    sget-object p1, Lcom/google/android/gms/internal/ads/zzabb;->zzcnk:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 33
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object p1

    .line 34
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzrk;->zzbtq:Z

    const-string p1, "ContentFetchTask"

    .line 35
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzrk;->setName(Ljava/lang/String;)V

    return-void
.end method

.method private final zza(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzre;)Lcom/google/android/gms/internal/ads/zzro;
    .registers 13
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_9

    .line 142
    new-instance p1, Lcom/google/android/gms/internal/ads/zzro;

    invoke-direct {p1, p0, v0, v0}, Lcom/google/android/gms/internal/ads/zzro;-><init>(Lcom/google/android/gms/internal/ads/zzrk;II)V

    return-object p1

    .line 143
    :cond_9
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 144
    invoke-virtual {p1, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v4

    .line 145
    instance-of v1, p1, Landroid/widget/TextView;

    const/4 v9, 0x1

    if-eqz v1, :cond_4e

    instance-of v1, p1, Landroid/widget/EditText;

    if-nez v1, :cond_4e

    .line 146
    move-object v1, p1

    check-cast v1, Landroid/widget/TextView;

    .line 147
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 148
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_48

    .line 149
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 151
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v7, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float v8, p1

    move-object v2, p2

    .line 152
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzre;->zzb(Ljava/lang/String;ZFFFF)V

    .line 153
    new-instance p1, Lcom/google/android/gms/internal/ads/zzro;

    invoke-direct {p1, p0, v9, v0}, Lcom/google/android/gms/internal/ads/zzro;-><init>(Lcom/google/android/gms/internal/ads/zzrk;II)V

    return-object p1

    .line 154
    :cond_48
    new-instance p1, Lcom/google/android/gms/internal/ads/zzro;

    invoke-direct {p1, p0, v0, v0}, Lcom/google/android/gms/internal/ads/zzro;-><init>(Lcom/google/android/gms/internal/ads/zzrk;II)V

    return-object p1

    .line 155
    :cond_4e
    instance-of v1, p1, Landroid/webkit/WebView;

    if-eqz v1, :cond_7a

    instance-of v1, p1, Lcom/google/android/gms/internal/ads/zzbgj;

    if-nez v1, :cond_7a

    .line 156
    check-cast p1, Landroid/webkit/WebView;

    .line 157
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastKitKat()Z

    move-result v1

    if-nez v1, :cond_60

    const/4 p1, 0x0

    goto :goto_6c

    .line 159
    :cond_60
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzre;->zzme()V

    .line 160
    new-instance v1, Lcom/google/android/gms/internal/ads/zzrm;

    invoke-direct {v1, p0, p2, p1, v4}, Lcom/google/android/gms/internal/ads/zzrm;-><init>(Lcom/google/android/gms/internal/ads/zzrk;Lcom/google/android/gms/internal/ads/zzre;Landroid/webkit/WebView;Z)V

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    :goto_6c
    if-eqz p1, :cond_74

    .line 163
    new-instance p1, Lcom/google/android/gms/internal/ads/zzro;

    invoke-direct {p1, p0, v0, v9}, Lcom/google/android/gms/internal/ads/zzro;-><init>(Lcom/google/android/gms/internal/ads/zzrk;II)V

    return-object p1

    .line 164
    :cond_74
    new-instance p1, Lcom/google/android/gms/internal/ads/zzro;

    invoke-direct {p1, p0, v0, v0}, Lcom/google/android/gms/internal/ads/zzro;-><init>(Lcom/google/android/gms/internal/ads/zzrk;II)V

    return-object p1

    .line 165
    :cond_7a
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_9f

    .line 166
    check-cast p1, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 169
    :goto_82
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_99

    .line 170
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3, p2}, Lcom/google/android/gms/internal/ads/zzrk;->zza(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzre;)Lcom/google/android/gms/internal/ads/zzro;

    move-result-object v3

    .line 171
    iget v4, v3, Lcom/google/android/gms/internal/ads/zzro;->zzbtx:I

    add-int/2addr v1, v4

    .line 172
    iget v3, v3, Lcom/google/android/gms/internal/ads/zzro;->zzbty:I

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_82

    .line 174
    :cond_99
    new-instance p1, Lcom/google/android/gms/internal/ads/zzro;

    invoke-direct {p1, p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzro;-><init>(Lcom/google/android/gms/internal/ads/zzrk;II)V

    return-object p1

    .line 175
    :cond_9f
    new-instance p1, Lcom/google/android/gms/internal/ads/zzro;

    invoke-direct {p1, p0, v0, v0}, Lcom/google/android/gms/internal/ads/zzro;-><init>(Lcom/google/android/gms/internal/ads/zzrk;II)V

    return-object p1
.end method

.method private static zzmj()Z
    .registers 7
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    .line 111
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzku()Lcom/google/android/gms/internal/ads/zzrg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzrg;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_c

    return v0

    :cond_c
    const-string v2, "activity"

    .line 115
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    const-string v3, "keyguard"

    .line 117
    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    if-eqz v2, :cond_5f

    if-nez v3, :cond_21

    goto :goto_5f

    .line 121
    :cond_21
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_28

    return v0

    .line 124
    :cond_28
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 125
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    iget v6, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, v6, :cond_2c

    .line 127
    iget v2, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v4, 0x64

    if-ne v2, v4, :cond_5f

    .line 129
    invoke-virtual {v3}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v2

    if-nez v2, :cond_5f

    const-string v2, "power"

    .line 130
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    if-nez v1, :cond_58

    const/4 v1, 0x0

    goto :goto_5c

    .line 133
    :cond_58
    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1
    :try_end_5c
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_5c} :catch_60

    :goto_5c
    if-eqz v1, :cond_5f

    const/4 v0, 0x1

    :cond_5f
    :goto_5f
    return v0

    :catch_60
    move-exception v1

    .line 139
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkv()Lcom/google/android/gms/internal/ads/zzayb;

    move-result-object v2

    const-string v3, "ContentFetchTask.isInForeground"

    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzayb;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    return v0
.end method

.method private final zzml()V
    .registers 5

    .line 210
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrk;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 211
    :try_start_4
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzrk;->zzbtf:Z

    .line 212
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzrk;->zzbtf:Z

    const/16 v2, 0x2a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "ContentFetchThread: paused, mPause = "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzayp;->zzef(Ljava/lang/String;)V

    .line 213
    monitor-exit v0

    return-void

    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_4 .. :try_end_22} :catchall_20

    throw v1
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 45
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzrk;->zzmj()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 46
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzku()Lcom/google/android/gms/internal/ads/zzrg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzrg;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_19

    const-string v0, "ContentFetchThread: no activity. Sleeping."

    .line 48
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzayp;->zzef(Ljava/lang/String;)V

    .line 49
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzrk;->zzml()V
    :try_end_18
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_18} :catch_7b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_6b

    goto :goto_62

    :cond_19
    if-eqz v0, :cond_62

    const/4 v1, 0x0

    .line 53
    :try_start_1c
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_4c

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_4c

    .line 54
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v2, 0x1020002

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_3b} :catch_3d
    .catch Ljava/lang/InterruptedException; {:try_start_1c .. :try_end_3b} :catch_7b

    move-object v1, v0

    goto :goto_4c

    :catch_3d
    move-exception v0

    .line 57
    :try_start_3e
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkv()Lcom/google/android/gms/internal/ads/zzayb;

    move-result-object v2

    const-string v3, "ContentFetchTask.extractContent"

    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/internal/ads/zzayb;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string v0, "Failed getting root view of activity. Content not extracted."

    .line 58
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzayp;->zzef(Ljava/lang/String;)V

    :cond_4c
    :goto_4c
    if-eqz v1, :cond_62

    if-nez v1, :cond_51

    goto :goto_62

    .line 63
    :cond_51
    new-instance v0, Lcom/google/android/gms/internal/ads/zzrj;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzrj;-><init>(Lcom/google/android/gms/internal/ads/zzrk;Landroid/view/View;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_62

    :cond_5a
    const-string v0, "ContentFetchTask: sleeping"

    .line 67
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzayp;->zzef(Ljava/lang/String;)V

    .line 68
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzrk;->zzml()V

    .line 69
    :cond_62
    :goto_62
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzrk;->zzbti:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6a
    .catch Ljava/lang/InterruptedException; {:try_start_3e .. :try_end_6a} :catch_7b
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_6a} :catch_6b

    goto :goto_81

    :catch_6b
    move-exception v0

    const-string v1, "Error in ContentFetchTask"

    .line 75
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzayp;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 76
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkv()Lcom/google/android/gms/internal/ads/zzayb;

    move-result-object v1

    const-string v2, "ContentFetchTask.run"

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzayb;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_81

    :catch_7b
    move-exception v0

    const-string v1, "Error in ContentFetchTask"

    .line 72
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzayp;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 77
    :goto_81
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrk;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 78
    :catch_84
    :goto_84
    :try_start_84
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzrk;->zzbtf:Z
    :try_end_86
    .catchall {:try_start_84 .. :try_end_86} :catchall_96

    if-eqz v1, :cond_93

    :try_start_88
    const-string v1, "ContentFetchTask: waiting"

    .line 79
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzayp;->zzef(Ljava/lang/String;)V

    .line 80
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzrk;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_92
    .catch Ljava/lang/InterruptedException; {:try_start_88 .. :try_end_92} :catch_84
    .catchall {:try_start_88 .. :try_end_92} :catchall_96

    goto :goto_84

    .line 84
    :cond_93
    :try_start_93
    monitor-exit v0

    goto/16 :goto_0

    :catchall_96
    move-exception v1

    monitor-exit v0
    :try_end_98
    .catchall {:try_start_93 .. :try_end_98} :catchall_96

    throw v1

    return-void
.end method

.method public final wakeup()V
    .registers 3

    .line 205
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrk;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 206
    :try_start_4
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzrk;->zzbtf:Z

    .line 207
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzrk;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    const-string v1, "ContentFetchThread: wakeup"

    .line 208
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzayp;->zzef(Ljava/lang/String;)V

    .line 209
    monitor-exit v0

    return-void

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_12

    throw v1
.end method

.method final zza(Lcom/google/android/gms/internal/ads/zzre;Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .registers 15
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 176
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzre;->zzmd()V

    .line 177
    :try_start_3
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7c

    .line 178
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p3, "text"

    .line 179
    invoke-virtual {v0, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 180
    iget-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzrk;->zzbtp:Z

    if-nez p3, :cond_65

    invoke-virtual {p2}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_65

    .line 182
    invoke-virtual {p2}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\n"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 183
    invoke-virtual {p2}, Landroid/webkit/WebView;->getX()F

    move-result v6

    .line 184
    invoke-virtual {p2}, Landroid/webkit/WebView;->getY()F

    move-result v7

    .line 185
    invoke-virtual {p2}, Landroid/webkit/WebView;->getWidth()I

    move-result p3

    int-to-float v8, p3

    .line 186
    invoke-virtual {p2}, Landroid/webkit/WebView;->getHeight()I

    move-result p2

    int-to-float v9, p2

    move-object v3, p1

    move v5, p4

    .line 187
    invoke-virtual/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/zzre;->zza(Ljava/lang/String;ZFFFF)V

    goto :goto_7c

    .line 189
    :cond_65
    invoke-virtual {p2}, Landroid/webkit/WebView;->getX()F

    move-result v4

    .line 190
    invoke-virtual {p2}, Landroid/webkit/WebView;->getY()F

    move-result v5

    .line 191
    invoke-virtual {p2}, Landroid/webkit/WebView;->getWidth()I

    move-result p3

    int-to-float v6, p3

    .line 192
    invoke-virtual {p2}, Landroid/webkit/WebView;->getHeight()I

    move-result p2

    int-to-float v7, p2

    move-object v1, p1

    move v3, p4

    .line 193
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzre;->zza(Ljava/lang/String;ZFFFF)V

    .line 194
    :cond_7c
    :goto_7c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzre;->zzly()Z

    move-result p2

    if-eqz p2, :cond_87

    .line 195
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzrk;->zzbth:Lcom/google/android/gms/internal/ads/zzrd;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzrd;->zzb(Lcom/google/android/gms/internal/ads/zzre;)Z
    :try_end_87
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_87} :catch_98
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_87} :catch_88

    :cond_87
    return-void

    :catch_88
    move-exception p1

    const-string p2, "Failed to get webview content."

    .line 201
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 202
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkv()Lcom/google/android/gms/internal/ads/zzayb;

    move-result-object p2

    const-string p3, "ContentFetchTask.processWebViewContent"

    invoke-virtual {p2, p1, p3}, Lcom/google/android/gms/internal/ads/zzayb;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void

    :catch_98
    const-string p1, "Json string may be malformed."

    .line 198
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzef(Ljava/lang/String;)V

    return-void
.end method

.method final zzj(Landroid/view/View;)V
    .registers 12
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 85
    :try_start_0
    new-instance v9, Lcom/google/android/gms/internal/ads/zzre;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzrk;->zzbsf:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzrk;->zzbtj:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzrk;->zzbsh:I

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzrk;->zzbtk:I

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzrk;->zzbtl:I

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzrk;->zzbtm:I

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzrk;->zzbtn:I

    iget-boolean v8, p0, Lcom/google/android/gms/internal/ads/zzrk;->zzbsi:Z

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/zzre;-><init>(IIIIIIIZ)V

    .line 86
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzku()Lcom/google/android/gms/internal/ads/zzrg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzrg;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_53

    .line 88
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzrk;->zzbto:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_53

    .line 90
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzabb;->zzcng:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 92
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v2

    .line 93
    check-cast v2, Ljava/lang/String;

    const-string v3, "id"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 94
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_53

    .line 95
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzrk;->zzbto:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53

    return-void

    .line 97
    :cond_53
    invoke-direct {p0, p1, v9}, Lcom/google/android/gms/internal/ads/zzrk;->zza(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzre;)Lcom/google/android/gms/internal/ads/zzro;

    move-result-object p1

    .line 98
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzre;->zzmg()V

    .line 99
    iget v0, p1, Lcom/google/android/gms/internal/ads/zzro;->zzbtx:I

    if-nez v0, :cond_63

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzro;->zzbty:I

    if-nez v0, :cond_63

    return-void

    .line 101
    :cond_63
    iget v0, p1, Lcom/google/android/gms/internal/ads/zzro;->zzbty:I

    if-nez v0, :cond_6e

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzre;->zzmh()I

    move-result v0

    if-nez v0, :cond_6e

    return-void

    .line 103
    :cond_6e
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzro;->zzbty:I

    if-nez p1, :cond_7b

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrk;->zzbth:Lcom/google/android/gms/internal/ads/zzrd;

    invoke-virtual {p1, v9}, Lcom/google/android/gms/internal/ads/zzrd;->zza(Lcom/google/android/gms/internal/ads/zzre;)Z

    move-result p1

    if-eqz p1, :cond_7b

    return-void

    .line 105
    :cond_7b
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrk;->zzbth:Lcom/google/android/gms/internal/ads/zzrd;

    invoke-virtual {p1, v9}, Lcom/google/android/gms/internal/ads/zzrd;->zzc(Lcom/google/android/gms/internal/ads/zzre;)V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_80} :catch_81

    return-void

    :catch_81
    move-exception p1

    const-string v0, "Exception in fetchContentOnUIThread"

    .line 108
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 109
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkv()Lcom/google/android/gms/internal/ads/zzayb;

    move-result-object v0

    const-string v1, "ContentFetchTask.fetchContent"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzayb;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public final zzmi()V
    .registers 3

    .line 37
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrk;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 38
    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzrk;->started:Z

    if-eqz v1, :cond_e

    const-string v1, "Content hash thread already started, quiting..."

    .line 39
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzayp;->zzef(Ljava/lang/String;)V

    .line 40
    monitor-exit v0

    return-void

    :cond_e
    const/4 v1, 0x1

    .line 41
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzrk;->started:Z

    .line 42
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_16

    .line 43
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzrk;->start()V

    return-void

    :catchall_16
    move-exception v1

    .line 42
    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public final zzmk()Lcom/google/android/gms/internal/ads/zzre;
    .registers 3

    .line 204
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrk;->zzbth:Lcom/google/android/gms/internal/ads/zzrd;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzrk;->zzbtq:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzrd;->zzo(Z)Lcom/google/android/gms/internal/ads/zzre;

    move-result-object v0

    return-object v0
.end method

.method public final zzmm()Z
    .registers 2

    .line 214
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzrk;->zzbtf:Z

    return v0
.end method
