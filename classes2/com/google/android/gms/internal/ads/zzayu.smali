.class public final Lcom/google/android/gms/internal/ads/zzayu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# static fields
.field public static final zzeba:Lcom/google/android/gms/internal/ads/zzdvo;


# instance fields
.field private zzbij:Ljava/lang/String;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "userAgentLock"
    .end annotation
.end field

.field private zzeay:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field

.field private zzeaz:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field

.field private final zzebb:Ljava/lang/Object;

.field private zzebc:Z

.field private zzebd:Z

.field private zzyq:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 617
    new-instance v0, Lcom/google/android/gms/internal/ads/zzayo;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzayo;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzayu;->zzeba:Lcom/google/android/gms/internal/ads/zzdvo;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 606
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 607
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzayu;->zzeay:Ljava/util/concurrent/atomic/AtomicReference;

    .line 608
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzayu;->zzeaz:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x1

    .line 609
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzayu;->zzyq:Z

    .line 610
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzayu;->zzebb:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 611
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzayu;->zzebc:Z

    .line 612
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzayu;->zzebd:Z

    return-void
.end method

.method private static zza(C)I
    .registers 3

    const/16 v0, 0x30

    if-lt p0, v0, :cond_a

    const/16 v1, 0x39

    if-gt p0, v1, :cond_a

    sub-int/2addr p0, v0

    return p0

    :cond_a
    const/16 v0, 0x41

    if-lt p0, v0, :cond_16

    const/16 v1, 0x46

    if-gt p0, v1, :cond_16

    :goto_12
    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, 0xa

    return p0

    :cond_16
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1f

    const/16 v1, 0x66

    if-gt p0, v1, :cond_1f

    goto :goto_12

    .line 141
    :cond_1f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid Hex."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    return-void
.end method

.method public static zza(Landroid/view/WindowManager;)Landroid/util/DisplayMetrics;
    .registers 2

    .line 240
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 241
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 242
    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    return-object v0
.end method

.method public static zza(Landroid/view/View;IIZ)Landroid/widget/PopupWindow;
    .registers 5

    .line 250
    new-instance p3, Landroid/widget/PopupWindow;

    const/4 v0, 0x0

    invoke-direct {p3, p0, p1, p2, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    return-object p3
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzayu;)Ljava/lang/Object;
    .registers 1

    .line 615
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzayu;->zzebb:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzayu;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 616
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzayu;->zzbij:Ljava/lang/String;

    return-object p1
.end method

.method public static zza(Ljava/io/InputStreamReader;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x2000

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x800

    .line 20
    new-array v1, v1, [C

    .line 21
    :goto_b
    invoke-virtual {p0, v1}, Ljava/io/InputStreamReader;->read([C)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_17

    const/4 v3, 0x0

    .line 22
    invoke-virtual {v0, v1, v3, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 23
    :cond_17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final zza(Ljava/util/Collection;)Lorg/json/JSONArray;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 102
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 103
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 104
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzayu;->zza(Lorg/json/JSONArray;Ljava/lang/Object;)V

    goto :goto_9

    :cond_17
    return-object v0
.end method

.method public static zza(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 328
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    const/high16 v0, 0x10000000

    .line 331
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 332
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static zza(Landroid/content/Context;Landroid/net/Uri;)V
    .registers 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .line 414
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 415
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 416
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 417
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzayu;->zzb(Landroid/content/Context;Landroid/content/Intent;)V

    const-string v2, "com.android.browser.application_id"

    .line 418
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 420
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "Opening "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " in a new browser."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzayp;->zzef(Ljava/lang/String;)V
    :try_end_45
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_45} :catch_46

    return-void

    :catch_46
    move-exception p0

    const-string p1, "No browser is found."

    .line 423
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/zzayp;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static zza(Landroid/content/Context;Ljava/lang/Throwable;)V
    .registers 4

    if-nez p0, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    .line 514
    :try_start_4
    sget-object v1, Lcom/google/android/gms/internal/ads/zzadb;->zzdcc:Lcom/google/android/gms/internal/ads/zzaci;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaci;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_10
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_10} :catch_10

    :catch_10
    if-eqz v0, :cond_15

    .line 519
    invoke-static {p0, p1}, Lcom/google/android/gms/common/util/CrashUtils;->addDynamiteErrorToDropBox(Landroid/content/Context;Ljava/lang/Throwable;)Z

    :cond_15
    return-void
.end method

.method private final zza(Lorg/json/JSONArray;Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 107
    instance-of v0, p2, Landroid/os/Bundle;

    if-eqz v0, :cond_e

    .line 108
    check-cast p2, Landroid/os/Bundle;

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzayu;->zzd(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    return-void

    .line 109
    :cond_e
    instance-of v0, p2, Ljava/util/Map;

    if-eqz v0, :cond_1c

    .line 110
    check-cast p2, Ljava/util/Map;

    .line 111
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzayu;->zzj(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    return-void

    .line 112
    :cond_1c
    instance-of v0, p2, Ljava/util/Collection;

    if-eqz v0, :cond_2a

    .line 113
    check-cast p2, Ljava/util/Collection;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzayu;->zza(Ljava/util/Collection;)Lorg/json/JSONArray;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    return-void

    .line 114
    :cond_2a
    instance-of v0, p2, [Ljava/lang/Object;

    if-eqz v0, :cond_45

    .line 115
    check-cast p2, [Ljava/lang/Object;

    .line 116
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 117
    array-length v1, p2

    const/4 v2, 0x0

    :goto_37
    if-ge v2, v1, :cond_41

    aget-object v3, p2, v2

    .line 118
    invoke-direct {p0, v0, v3}, Lcom/google/android/gms/internal/ads/zzayu;->zza(Lorg/json/JSONArray;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    .line 121
    :cond_41
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    return-void

    .line 122
    :cond_45
    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    return-void
.end method

.method private final zza(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 124
    instance-of v0, p3, Landroid/os/Bundle;

    if-eqz v0, :cond_e

    .line 125
    check-cast p3, Landroid/os/Bundle;

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/zzayu;->zzd(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void

    .line 126
    :cond_e
    instance-of v0, p3, Ljava/util/Map;

    if-eqz v0, :cond_1c

    .line 127
    check-cast p3, Ljava/util/Map;

    .line 128
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/zzayu;->zzj(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void

    .line 129
    :cond_1c
    instance-of v0, p3, Ljava/util/Collection;

    if-eqz v0, :cond_2f

    if-eqz p2, :cond_23

    goto :goto_25

    :cond_23
    const-string p2, "null"

    .line 130
    :goto_25
    check-cast p3, Ljava/util/Collection;

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/zzayu;->zza(Ljava/util/Collection;)Lorg/json/JSONArray;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void

    .line 131
    :cond_2f
    instance-of v0, p3, [Ljava/lang/Object;

    if-eqz v0, :cond_41

    .line 132
    check-cast p3, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/zzayu;->zza(Ljava/util/Collection;)Lorg/json/JSONArray;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void

    .line 133
    :cond_41
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzayu;Z)Z
    .registers 2

    .line 614
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzayu;->zzyq:Z

    return p1
.end method

.method private static zza(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/regex/Pattern;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 451
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 453
    :cond_8
    :try_start_8
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/regex/Pattern;

    if-eqz v0, :cond_1a

    .line 454
    invoke-virtual {v0}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    .line 455
    :cond_1a
    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 456
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 457
    :cond_21
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0
    :try_end_29
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_8 .. :try_end_29} :catch_2a

    return p0

    :catch_2a
    return v1
.end method

.method protected static zzar(Landroid/content/Context;)Ljava/lang/String;
    .registers 2
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 83
    :try_start_0
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p0

    invoke-virtual {p0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object p0
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_d} :catch_e

    return-object p0

    .line 85
    :catch_e
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzayu;->zzxr()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static zzas(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;
    .registers 2

    .line 244
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static zzat(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzaam;
    .registers 2

    .line 245
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaam;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzaam;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static zzau(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "activity"

    .line 252
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    if-nez p0, :cond_c

    return-object v0

    :cond_c
    const/4 v1, 0x1

    .line 255
    invoke-virtual {p0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2d

    .line 256
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2d

    const/4 v1, 0x0

    .line 257
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz p0, :cond_2d

    .line 258
    iget-object v1, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v1, :cond_2d

    .line 259
    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2c} :catch_2d

    return-object p0

    :catch_2d
    :cond_2d
    return-object v0
.end method

.method public static zzav(Landroid/content/Context;)Z
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "activity"

    .line 264
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    const-string v2, "keyguard"

    .line 266
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    if-eqz v1, :cond_56

    if-nez v2, :cond_16

    goto :goto_56

    .line 270
    :cond_16
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1d

    return v0

    .line 273
    :cond_1d
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_54

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 274
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    iget v5, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, v5, :cond_21

    .line 275
    iget v1, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v3, 0x64

    if-ne v1, v3, :cond_54

    .line 276
    invoke-virtual {v2}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    if-nez v1, :cond_54

    const-string v1, "power"

    .line 277
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    if-nez p0, :cond_4d

    const/4 p0, 0x0

    goto :goto_51

    .line 280
    :cond_4d
    invoke-virtual {p0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result p0
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_51} :catch_56

    :goto_51
    if-eqz p0, :cond_54

    return v0

    :cond_54
    const/4 p0, 0x1

    return p0

    :catch_56
    :cond_56
    :goto_56
    return v0
.end method

.method public static zzaw(Landroid/content/Context;)I
    .registers 1

    .line 334
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 335
    :cond_8
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    return p0
.end method

.method private static zzax(Landroid/content/Context;)Landroid/app/KeyguardManager;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "keyguard"

    .line 343
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_f

    .line 344
    instance-of v0, p0, Landroid/app/KeyguardManager;

    if-eqz v0, :cond_f

    .line 345
    check-cast p0, Landroid/app/KeyguardManager;

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return-object p0
.end method

.method public static zzay(Landroid/content/Context;)Z
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_18

    .line 384
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastJellyBean()Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_18

    .line 386
    :cond_a
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzayu;->zzax(Landroid/content/Context;)Landroid/app/KeyguardManager;

    move-result-object p0

    if-eqz p0, :cond_18

    .line 387
    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x1

    return p0

    :cond_18
    :goto_18
    return v0
.end method

.method public static zzaz(Landroid/content/Context;)Z
    .registers 4

    const/4 v0, 0x0

    .line 404
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    const-string v1, "com.google.android.gms.ads.internal.ClientApi"

    .line 406
    invoke-virtual {p0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_a} :catch_1b
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_a} :catch_b

    return v0

    :catch_b
    move-exception p0

    const-string v1, "Error loading class."

    .line 411
    invoke-static {v1, p0}, Lcom/google/android/gms/internal/ads/zzayp;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 412
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkv()Lcom/google/android/gms/internal/ads/zzayb;

    move-result-object v1

    const-string v2, "AdUtil.isLiteSdk"

    invoke-virtual {v1, p0, v2}, Lcom/google/android/gms/internal/ads/zzayb;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    return v0

    :catch_1b
    const/4 p0, 0x1

    return p0
.end method

.method public static zzb(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    if-nez p1, :cond_3

    return-void

    .line 427
    :cond_3
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastJellyBeanMR2()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 428
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_19

    :cond_14
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :goto_19
    const/4 v1, 0x0

    const-string v2, "android.support.customtabs.extra.SESSION"

    .line 429
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 430
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "com.android.browser.application_id"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_2b
    return-void
.end method

.method public static zzb(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v1, 0x0

    :goto_f
    if-ge v1, p2, :cond_22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Ljava/lang/String;

    .line 16
    new-instance v3, Lcom/google/android/gms/internal/ads/zzbax;

    invoke-direct {v3, p0, p1, v2}, Lcom/google/android/gms/internal/ads/zzbax;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzayl;->zzwz()Lcom/google/android/gms/internal/ads/zzdzc;

    goto :goto_f

    :cond_22
    return-void
.end method

.method public static zzba(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 521
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabb;->zzcwd:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 522
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 523
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_15

    return-object v1

    :cond_15
    const/4 v0, 0x0

    const-string v2, "mobileads_consent"

    .line 526
    invoke-virtual {p0, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "consent_string"

    .line 527
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static zzbb(Landroid/content/Context;)Landroid/os/Bundle;
    .registers 8

    .line 529
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabb;->zzcwe:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 530
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 531
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_14

    return-object v1

    .line 534
    :cond_14
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 535
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "IABConsent_CMPPresent"

    .line 536
    invoke-interface {p0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2d

    .line 538
    invoke-interface {p0, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 539
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_2d
    const-string v2, "IABConsent_SubjectToGDPR"

    const-string v3, "IABConsent_ConsentString"

    const-string v5, "IABConsent_ParsedPurposeConsents"

    const-string v6, "IABConsent_ParsedVendorConsents"

    .line 540
    filled-new-array {v2, v3, v5, v6}, [Ljava/lang/String;

    move-result-object v2

    :goto_39
    const/4 v3, 0x4

    if-ge v4, v3, :cond_4e

    .line 541
    aget-object v3, v2, v4

    .line 542
    invoke-interface {p0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4b

    .line 543
    invoke-interface {p0, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4b
    add-int/lit8 v4, v4, 0x1

    goto :goto_39

    :cond_4e
    return-object v0
.end method

.method public static zzbc(Landroid/content/Context;)Z
    .registers 6

    .line 546
    instance-of v0, p0, Landroid/app/Activity;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 548
    :cond_6
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_3e

    .line 549
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_15

    goto :goto_3e

    .line 551
    :cond_15
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 552
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 553
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    .line 554
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 555
    iget p0, v0, Landroid/graphics/Rect;->bottom:I

    if-eqz p0, :cond_3e

    iget p0, v2, Landroid/graphics/Rect;->bottom:I

    if-eqz p0, :cond_3e

    iget p0, v0, Landroid/graphics/Rect;->top:I

    iget v0, v2, Landroid/graphics/Rect;->top:I

    if-ne p0, v0, :cond_3e

    const/4 p0, 0x1

    return p0

    :cond_3e
    :goto_3e
    return v1
.end method

.method public static zzbd(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 580
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_b

    :cond_7
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 581
    :goto_b
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzayu;->zzh(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzayu;->zze(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static zzbe(Landroid/content/Context;)Z
    .registers 2

    .line 582
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzayu;->zzh(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "com.google.android.gms.ads.INTEGRATION_MANAGER"

    .line 583
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 584
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzayu;->zze(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1c

    .line 585
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1c

    const/4 p0, 0x1

    return p0

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method public static zzbf(Landroid/content/Context;)Z
    .registers 2

    const-string v0, "connectivity"

    .line 603
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 604
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_16

    .line 605
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public static zzc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    .line 433
    :try_start_1
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object p0

    const-string p1, "UTF-8"

    .line 434
    invoke-virtual {p2, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 435
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_11} :catch_12

    return-void

    :catch_12
    move-exception p0

    const-string p1, "Error writing to file in internal storage."

    .line 438
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/zzayp;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static zzc(Ljava/lang/Runnable;)V
    .registers 3

    .line 294
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_12

    .line 295
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void

    .line 296
    :cond_12
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbz;->zzeep:Lcom/google/android/gms/internal/ads/zzdzb;

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/zzdzb;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static zzd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .registers 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "UTF-8"

    .line 465
    :try_start_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "User-Agent"

    .line 466
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkr()Lcom/google/android/gms/internal/ads/zzayu;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Lcom/google/android/gms/internal/ads/zzayu;->zzs(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Cache-Control"

    const-string v2, "max-stale=3600"

    .line 467
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbag;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzbag;-><init>(Landroid/content/Context;)V

    .line 469
    invoke-virtual {p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzbag;->zzc(Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p0

    const-wide/16 p1, 0x3c

    .line 470
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzdzc;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_4d

    .line 472
    new-instance p1, Landroid/webkit/WebResourceResponse;

    const-string p2, "application/javascript"

    new-instance v1, Ljava/io/ByteArrayInputStream;

    .line 473
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p1, p2, v0, v1}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_40} :catch_47
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_40} :catch_45
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_40} :catch_43
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_40} :catch_41

    return-object p1

    :catch_41
    move-exception p0

    goto :goto_48

    :catch_43
    move-exception p0

    goto :goto_48

    :catch_45
    move-exception p0

    goto :goto_48

    :catch_47
    move-exception p0

    :goto_48
    const-string p1, "Could not fetch MRAID JS."

    .line 477
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/zzayp;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4d
    const/4 p0, 0x0

    return-object p0
.end method

.method public static zzd(Ljava/net/HttpURLConnection;)Landroid/webkit/WebResourceResponse;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 479
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkr()Lcom/google/android/gms/internal/ads/zzayu;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 480
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ""

    const/4 v3, 0x0

    const-string v4, ";"

    if-eqz v1, :cond_14

    move-object v6, v2

    goto :goto_1f

    .line 482
    :cond_14
    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 483
    aget-object v0, v0, v3

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .line 485
    :goto_1f
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkr()Lcom/google/android/gms/internal/ads/zzayu;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 486
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5f

    .line 487
    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 488
    array-length v1, v0

    const/4 v4, 0x1

    if-eq v1, v4, :cond_5f

    const/4 v1, 0x1

    .line 489
    :goto_35
    array-length v5, v0

    if-ge v1, v5, :cond_5f

    .line 490
    aget-object v5, v0, v1

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v7, "charset"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5c

    .line 491
    aget-object v5, v0, v1

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v7, "="

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 492
    array-length v7, v5

    if-le v7, v4, :cond_5c

    .line 493
    aget-object v0, v5, v4

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    goto :goto_5f

    :cond_5c
    add-int/lit8 v1, v1, 0x1

    goto :goto_35

    :cond_5f
    :goto_5f
    move-object v7, v2

    .line 497
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    .line 498
    new-instance v10, Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v10, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 499
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_75
    :goto_75
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_af

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 500
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_75

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_75

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_75

    .line 501
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v10, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_75

    .line 505
    :cond_af
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkt()Lcom/google/android/gms/internal/ads/zzazd;

    move-result-object v5

    .line 506
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    .line 507
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v9

    .line 508
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    .line 509
    invoke-virtual/range {v5 .. v11}, Lcom/google/android/gms/internal/ads/zzazd;->zza(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)Landroid/webkit/WebResourceResponse;

    move-result-object p0

    return-object p0
.end method

.method public static zzd(Landroid/app/Activity;)[I
    .registers 4

    .line 214
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_21

    const v0, 0x1020002

    .line 216
    invoke-virtual {p0, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_21

    const/4 v0, 0x2

    .line 218
    new-array v0, v0, [I

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    aput p0, v0, v1

    return-object v0

    .line 219
    :cond_21
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzayu;->zzxu()[I

    move-result-object p0

    return-object p0
.end method

.method private static zze(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 3

    const-string v0, ""

    if-nez p0, :cond_5

    return-object v0

    :cond_5
    const-string v1, "com.google.android.gms.ads.APPLICATION_ID"

    .line 589
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 590
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    return-object v0

    :cond_12
    const-string v1, "^ca-app-pub-[0-9]{16}~[0-9]{10}$"

    .line 592
    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_24

    const-string v1, "^/\\d+~.+$"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    goto :goto_24

    :cond_23
    return-object v0

    :cond_24
    :goto_24
    return-object p0
.end method

.method public static zzen(Ljava/lang/String;)I
    .registers 3

    .line 207
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_4} :catch_5

    return p0

    :catch_5
    move-exception p0

    .line 208
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x16

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Could not parse value:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzayp;->zzfe(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static zzeo(Ljava/lang/String;)Z
    .registers 2

    .line 237
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    const-string v0, "([^\\s]+(\\.(?i)(jpg|png|gif|bmp|webp))$)"

    .line 239
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static zzer(Ljava/lang/String;)Z
    .registers 7

    .line 556
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbk;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 558
    :cond_8
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabb;->zzcty:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 559
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 560
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1b

    return v1

    .line 562
    :cond_1b
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabb;->zzcua:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 563
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 564
    check-cast v0, Ljava/lang/String;

    .line 565
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const-string v3, ";"

    if-nez v2, :cond_43

    .line 566
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v4, 0x0

    :goto_35
    if-ge v4, v2, :cond_43

    aget-object v5, v0, v4

    .line 567
    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_40

    return v1

    :cond_40
    add-int/lit8 v4, v4, 0x1

    goto :goto_35

    .line 570
    :cond_43
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabb;->zzctz:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 571
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 572
    check-cast v0, Ljava/lang/String;

    .line 573
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_57

    return v4

    .line 575
    :cond_57
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_5d
    if-ge v3, v2, :cond_6b

    aget-object v5, v0, v3

    .line 576
    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_68

    return v4

    :cond_68
    add-int/lit8 v3, v3, 0x1

    goto :goto_5d

    :cond_6b
    return v1
.end method

.method private static zzh(Landroid/content/Context;)Landroid/os/Bundle;
    .registers 3

    .line 596
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    .line 597
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x80

    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_10
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_10} :catch_13
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_10} :catch_11

    return-object p0

    :catch_11
    move-exception p0

    goto :goto_14

    :catch_13
    move-exception p0

    :goto_14
    const-string v0, "Error getting metadata"

    .line 600
    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzayp;->zza(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static zzj(Landroid/net/Uri;)Ljava/util/Map;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 145
    sget-object v0, Lcom/google/android/gms/internal/ads/zzacs;->zzdaz:Lcom/google/android/gms/internal/ads/zzaci;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaci;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_37

    if-nez p0, :cond_12

    return-object v1

    .line 149
    :cond_12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 150
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkt()Lcom/google/android/gms/internal/ads/zzazd;

    .line 151
    invoke-virtual {p0}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v1

    .line 152
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 153
    invoke-virtual {p0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_22

    :cond_36
    return-object v0

    :cond_37
    if-nez p0, :cond_3a

    return-object v1

    .line 159
    :cond_3a
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 160
    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_48

    return-object v0

    .line 163
    :cond_48
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 165
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x64

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 166
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v4, 0x0

    move-object v6, v2

    const/4 v5, 0x0

    :goto_5b
    if-ge v5, v1, :cond_e3

    .line 169
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x25

    if-eq v7, v8, :cond_9f

    const/16 v8, 0x26

    if-eq v7, v8, :cond_84

    const/16 v8, 0x2b

    if-eq v7, v8, :cond_7e

    const/16 v8, 0x3d

    if-eq v7, v8, :cond_76

    .line 200
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_df

    :cond_76
    if-eq v6, v3, :cond_7a

    move-object v6, v3

    goto :goto_df

    .line 175
    :cond_7a
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_df

    :cond_7e
    const/16 v7, 0x20

    .line 171
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_df

    .line 177
    :cond_84
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_9d

    if-eq v6, v2, :cond_9d

    .line 178
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 180
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_9d
    move-object v6, v2

    goto :goto_df

    :cond_9f
    sub-int v9, v1, v5

    .line 183
    div-int/lit8 v9, v9, 0x3

    new-array v9, v9, [B

    const/4 v10, 0x0

    :cond_a6
    :goto_a6
    add-int/lit8 v11, v1, -0x2

    if-ge v5, v11, :cond_d1

    if-ne v7, v8, :cond_d1

    add-int/lit8 v11, v5, 0x1

    .line 187
    :try_start_ae
    invoke-virtual {p0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-static {v11}, Lcom/google/android/gms/internal/ads/zzayu;->zza(C)I

    move-result v11

    shl-int/lit8 v11, v11, 0x4

    add-int/lit8 v12, v5, 0x2

    .line 188
    invoke-virtual {p0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-static {v12}, Lcom/google/android/gms/internal/ads/zzayu;->zza(C)I

    move-result v12

    add-int/2addr v11, v12

    int-to-byte v11, v11

    aput-byte v11, v9, v10
    :try_end_c6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_ae .. :try_end_c6} :catch_c8

    add-int/lit8 v10, v10, 0x1

    :catch_c8
    add-int/lit8 v5, v5, 0x3

    if-ge v5, v1, :cond_a6

    .line 194
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_a6

    .line 195
    :cond_d1
    :try_start_d1
    new-instance v11, Ljava/lang/String;

    const-string v12, "UTF-8"

    invoke-direct {v11, v9, v4, v10, v12}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_db
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_d1 .. :try_end_db} :catch_db

    :catch_db
    if-eq v7, v8, :cond_df

    goto/16 :goto_5b

    :cond_df
    :goto_df
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_5b

    .line 203
    :cond_e3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_f6

    if-eq v6, v2, :cond_f6

    .line 204
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f6
    return-object v0
.end method

.method public static zzm(Landroid/view/View;)Landroid/graphics/Bitmap;
    .registers 3

    const/4 v0, 0x1

    .line 246
    invoke-virtual {p0, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 247
    invoke-virtual {p0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    .line 248
    invoke-virtual {p0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    return-object v0
.end method

.method public static zzn(Landroid/view/View;)Landroid/graphics/Bitmap;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 300
    :cond_4
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzayu;->zzp(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_e

    .line 302
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzayu;->zzo(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_e
    return-object v0
.end method

.method private static zzo(Landroid/view/View;)Landroid/graphics/Bitmap;
    .registers 7
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 304
    :try_start_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 305
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    if-eqz v1, :cond_29

    if-nez v2, :cond_e

    goto :goto_29

    .line 309
    :cond_e
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 310
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v5, 0x0

    .line 311
    invoke-virtual {p0, v5, v5, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 312
    invoke-virtual {p0, v4}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-object v3

    :cond_29
    :goto_29
    const-string p0, "Width or height of view is zero"

    .line 307
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzayp;->zzfe(Ljava/lang/String;)V
    :try_end_2e
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_2e} :catch_2f

    return-object v0

    :catch_2f
    move-exception p0

    const-string v1, "Fail to capture the webview"

    .line 315
    invoke-static {v1, p0}, Lcom/google/android/gms/internal/ads/zzayp;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private static zzp(Landroid/view/View;)Landroid/graphics/Bitmap;
    .registers 4
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 318
    :try_start_1
    invoke-virtual {p0}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v1

    const/4 v2, 0x1

    .line 319
    invoke-virtual {p0, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 320
    invoke-virtual {p0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_13

    .line 322
    invoke-static {v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 323
    :cond_13
    invoke-virtual {p0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V
    :try_end_16
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_16} :catch_17

    goto :goto_1d

    :catch_17
    move-exception p0

    const-string v1, "Fail to capture the web view"

    .line 326
    invoke-static {v1, p0}, Lcom/google/android/gms/internal/ads/zzayp;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1d
    return-object v0
.end method

.method public static zzq(Landroid/view/View;)Z
    .registers 3

    .line 368
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_12

    .line 370
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 371
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_12

    .line 372
    check-cast p0, Landroid/app/Activity;

    goto :goto_13

    :cond_12
    move-object p0, v0

    :goto_13
    const/4 v1, 0x0

    if-nez p0, :cond_17

    return v1

    .line 378
    :cond_17
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-nez p0, :cond_1e

    goto :goto_22

    .line 381
    :cond_1e
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    :goto_22
    if-eqz v0, :cond_2d

    .line 383
    iget p0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v0, 0x80000

    and-int/2addr p0, v0

    if-eqz p0, :cond_2d

    const/4 p0, 0x1

    return p0

    :cond_2d
    return v1
.end method

.method public static zzr(Landroid/view/View;)I
    .registers 4
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, -0x1

    if-nez p0, :cond_4

    return v0

    .line 390
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    :goto_8
    if-eqz v1, :cond_13

    .line 391
    instance-of v2, v1, Landroid/widget/AdapterView;

    if-nez v2, :cond_13

    .line 392
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_8

    :cond_13
    if-nez v1, :cond_16

    return v0

    .line 395
    :cond_16
    check-cast v1, Landroid/widget/AdapterView;

    invoke-virtual {v1, p0}, Landroid/widget/AdapterView;->getPositionForView(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public static zzr(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    .line 8
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzatx;->zzab(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-static {p0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method public static zzs(Landroid/view/View;)Z
    .registers 3
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 398
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    :goto_8
    if-eqz p0, :cond_13

    .line 399
    instance-of v1, p0, Landroid/widget/ScrollView;

    if-nez v1, :cond_13

    .line 400
    invoke-interface {p0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    goto :goto_8

    :cond_13
    if-nez p0, :cond_16

    return v0

    :cond_16
    const/4 p0, 0x1

    return p0
.end method

.method public static zzt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 440
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object p0

    .line 441
    new-instance p1, Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/android/gms/common/util/IOUtils;->readInputStreamFully(Ljava/io/InputStream;Z)[B

    move-result-object p0

    const-string v0, "UTF-8"

    invoke-direct {p1, p0, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_10} :catch_11

    return-object p1

    :catch_11
    const-string p0, "Error reading from internal storage."

    .line 443
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzayp;->zzef(Ljava/lang/String;)V

    const-string p0, ""

    return-object p0
.end method

.method private static zzxr()Ljava/lang/String;
    .registers 3

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Mozilla/5.0 (Linux; U; Android"

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    if-eqz v1, :cond_1a

    const-string v1, " "

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1a
    const-string v1, "; "

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    if-eqz v2, :cond_40

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    sget-object v1, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    if-eqz v1, :cond_40

    const-string v1, " Build/"

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_40
    const-string v1, ") AppleWebKit/533 Version/4.0 Safari/533"

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static zzxs()Ljava/lang/String;
    .registers 1

    .line 206
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static zzxt()Ljava/lang/String;
    .registers 4

    .line 210
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 211
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 212
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    return-object v1

    :cond_b
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static zzxu()[I
    .registers 1

    const/4 v0, 0x2

    .line 213
    new-array v0, v0, [I

    fill-array-data v0, :array_8

    return-object v0

    nop

    :array_8
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public static zzxv()Ljava/lang/String;
    .registers 2

    .line 460
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkv()Lcom/google/android/gms/internal/ads/zzayb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzayb;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 462
    sget v1, Lcom/google/android/gms/ads/impl/R$string;->s7:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    :cond_11
    const-string v0, "Test Ad"

    :goto_13
    return-object v0
.end method


# virtual methods
.method public final zza(Landroid/os/Bundle;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 p2, 0x0

    if-eqz p1, :cond_e

    .line 93
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzayu;->zzd(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_7} :catch_8

    return-object p1

    :catch_8
    move-exception p1

    const-string v0, "Error converting Bundle to JSON"

    .line 95
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_e
    return-object p2
.end method

.method public final zza(Landroid/content/Context;Ljava/lang/String;Landroid/webkit/WebSettings;)V
    .registers 4

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzayu;->zzs(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    return-void
.end method

.method public final zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V
    .registers 13
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 287
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkr()Lcom/google/android/gms/internal/ads/zzayu;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzayu;->zzxt()Ljava/lang/String;

    move-result-object p5

    const-string v0, "device"

    invoke-virtual {p4, v0, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzabb;->zzrg()Ljava/util/List;

    move-result-object p5

    const-string v0, ","

    invoke-static {v0, p5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p5

    const-string v0, "eids"

    .line 290
    invoke-virtual {p4, v0, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpt()Lcom/google/android/gms/internal/ads/zzbbg;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzayy;

    invoke-direct {v6, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzayy;-><init>(Lcom/google/android/gms/internal/ads/zzayu;Landroid/content/Context;Ljava/lang/String;)V

    const/4 v5, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 292
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzbbg;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZLcom/google/android/gms/internal/ads/zzbbl;)V

    return-void
.end method

.method public final zza(Landroid/content/Context;Ljava/lang/String;ZLjava/net/HttpURLConnection;)V
    .registers 6

    const p3, 0xea60

    .line 2
    invoke-virtual {p4, p3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p4, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 4
    invoke-virtual {p4, p3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzayu;->zzs(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "User-Agent"

    invoke-virtual {p4, p2, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p4, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    return-void
.end method

.method public final zza(Landroid/view/View;Landroid/content/Context;)Z
    .registers 5

    .line 337
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_f

    const-string v1, "power"

    .line 339
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    .line 340
    :goto_10
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzayu;->zzax(Landroid/content/Context;)Landroid/app/KeyguardManager;

    move-result-object p2

    .line 341
    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzayu;->zza(Landroid/view/View;Landroid/os/PowerManager;Landroid/app/KeyguardManager;)Z

    move-result p1

    return p1
.end method

.method public final zza(Landroid/view/View;Landroid/os/PowerManager;Landroid/app/KeyguardManager;)Z
    .registers 7

    .line 347
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkr()Lcom/google/android/gms/internal/ads/zzayu;

    move-result-object v0

    .line 348
    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzayu;->zzyq:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1d

    if-nez p3, :cond_e

    const/4 p3, 0x0

    goto :goto_12

    .line 353
    :cond_e
    invoke-virtual {p3}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result p3

    :goto_12
    if-eqz p3, :cond_1d

    .line 355
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayu;->zzq(Landroid/view/View;)Z

    move-result p3

    if-eqz p3, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 p3, 0x0

    goto :goto_1e

    :cond_1d
    :goto_1d
    const/4 p3, 0x1

    .line 356
    :goto_1e
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_63

    .line 357
    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_63

    if-eqz p2, :cond_35

    .line 359
    invoke-virtual {p2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result p2

    if-eqz p2, :cond_33

    goto :goto_35

    :cond_33
    const/4 p2, 0x0

    goto :goto_36

    :cond_35
    :goto_35
    const/4 p2, 0x1

    :goto_36
    if-eqz p2, :cond_63

    if-eqz p3, :cond_63

    .line 360
    sget-object p2, Lcom/google/android/gms/internal/ads/zzabb;->zzcpt:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 362
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object p2

    .line 363
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_62

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 364
    invoke-virtual {p1, p2}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result p2

    if-nez p2, :cond_62

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 365
    invoke-virtual {p1, p2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_63

    :cond_62
    return v1

    :cond_63
    return v2
.end method

.method public final zzap(Landroid/content/Context;)Z
    .registers 5

    .line 24
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzayu;->zzebc:Z

    if-eqz v0, :cond_6

    const/4 p1, 0x0

    return p1

    .line 26
    :cond_6
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.USER_PRESENT"

    .line 27
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 28
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaza;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/ads/zzaza;-><init>(Lcom/google/android/gms/internal/ads/zzayu;Lcom/google/android/gms/internal/ads/zzayw;)V

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 30
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzayu;->zzebc:Z

    return p1
.end method

.method public final zzaq(Landroid/content/Context;)Z
    .registers 5

    .line 32
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzayu;->zzebd:Z

    if-eqz v0, :cond_6

    const/4 p1, 0x0

    return p1

    .line 34
    :cond_6
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.google.android.ads.intent.DEBUG_LOGGING_ENABLEMENT_CHANGED"

    .line 35
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/internal/ads/zzazb;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/ads/zzazb;-><init>(Lcom/google/android/gms/internal/ads/zzayu;Lcom/google/android/gms/internal/ads/zzayw;)V

    .line 38
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 39
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzayu;->zzebd:Z

    return p1
.end method

.method public final zzd(Landroid/os/Bundle;)Lorg/json/JSONObject;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 97
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 98
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 99
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzayu;->zza(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_d

    :cond_21
    return-object v0
.end method

.method public final zze(Landroid/app/Activity;)[I
    .registers 7

    .line 220
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayu;->zzd(Landroid/app/Activity;)[I

    move-result-object v0

    const/4 v1, 0x2

    .line 221
    new-array v1, v1, [I

    .line 222
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpt()Lcom/google/android/gms/internal/ads/zzbbg;

    move-result-object v2

    const/4 v3, 0x0

    aget v4, v0, v3

    invoke-virtual {v2, p1, v4}, Lcom/google/android/gms/internal/ads/zzbbg;->zzb(Landroid/content/Context;I)I

    move-result v2

    aput v2, v1, v3

    .line 223
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpt()Lcom/google/android/gms/internal/ads/zzbbg;

    move-result-object v2

    const/4 v3, 0x1

    aget v0, v0, v3

    invoke-virtual {v2, p1, v0}, Lcom/google/android/gms/internal/ads/zzbbg;->zzb(Landroid/content/Context;I)I

    move-result p1

    aput p1, v1, v3

    return-object v1
.end method

.method public final zzep(Ljava/lang/String;)Z
    .registers 5

    .line 445
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayu;->zzeay:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzabb;->zzcnm:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 446
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v1

    .line 447
    check-cast v1, Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzayu;->zza(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final zzeq(Ljava/lang/String;)Z
    .registers 5

    .line 448
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayu;->zzeaz:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzabb;->zzcnn:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 449
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v1

    .line 450
    check-cast v1, Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzayu;->zza(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final zzf(Landroid/app/Activity;)[I
    .registers 8

    .line 226
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_21

    const v4, 0x1020002

    .line 228
    invoke-virtual {v0, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 230
    new-array v4, v1, [I

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    aput v5, v4, v3

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    aput v0, v4, v2

    goto :goto_25

    .line 231
    :cond_21
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzayu;->zzxu()[I

    move-result-object v4

    .line 233
    :goto_25
    new-array v0, v1, [I

    .line 234
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpt()Lcom/google/android/gms/internal/ads/zzbbg;

    move-result-object v1

    aget v5, v4, v3

    invoke-virtual {v1, p1, v5}, Lcom/google/android/gms/internal/ads/zzbbg;->zzb(Landroid/content/Context;I)I

    move-result v1

    aput v1, v0, v3

    .line 235
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpt()Lcom/google/android/gms/internal/ads/zzbbg;

    move-result-object v1

    aget v3, v4, v2

    invoke-virtual {v1, p1, v3}, Lcom/google/android/gms/internal/ads/zzbbg;->zzb(Landroid/content/Context;I)I

    move-result p1

    aput p1, v0, v2

    return-object v0
.end method

.method public final zzi(Landroid/net/Uri;)Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 143
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdyq;->zzaf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzayx;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzayx;-><init>(Lcom/google/android/gms/internal/ads/zzayu;Landroid/net/Uri;)V

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbbz;->zzeep:Lcom/google/android/gms/internal/ads/zzdzb;

    .line 144
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdyq;->zzb(Lcom/google/android/gms/internal/ads/zzdzc;Lcom/google/android/gms/internal/ads/zzdya;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    return-object p1
.end method

.method public final zzj(Ljava/util/Map;)Lorg/json/JSONObject;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 86
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 87
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 88
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzayu;->zza(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_20
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_20} :catch_22

    goto :goto_d

    :cond_21
    return-object v0

    :catch_22
    move-exception p1

    .line 92
    new-instance v0, Lorg/json/JSONException;

    const-string v1, "Could not convert map to JSON: "

    invoke-virtual {p1}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3a

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3f

    :cond_3a
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_3f
    invoke-direct {v0, p1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    return-void
.end method

.method public final zzs(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 54
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayu;->zzebb:Ljava/lang/Object;

    monitor-enter v0

    .line 55
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzayu;->zzbij:Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 56
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzayu;->zzbij:Ljava/lang/String;

    monitor-exit v0

    return-object p1

    :cond_b
    if-nez p2, :cond_13

    .line 58
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzayu;->zzxr()Ljava/lang/String;

    move-result-object p1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_d2

    return-object p1

    .line 59
    :cond_13
    :try_start_13
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkt()Lcom/google/android/gms/internal/ads/zzazd;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzazd;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzayu;->zzbij:Ljava/lang/String;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1d} :catch_1d
    .catchall {:try_start_13 .. :try_end_1d} :catchall_d2

    .line 62
    :catch_1d
    :try_start_1d
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzayu;->zzbij:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 63
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpt()Lcom/google/android/gms/internal/ads/zzbbg;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbg;->zzyn()Z

    move-result v1

    if-nez v1, :cond_68

    const/4 v1, 0x0

    .line 64
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzayu;->zzbij:Ljava/lang/String;

    .line 65
    sget-object v1, Lcom/google/android/gms/internal/ads/zzayu;->zzeba:Lcom/google/android/gms/internal/ads/zzdvo;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzayz;

    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/internal/ads/zzayz;-><init>(Lcom/google/android/gms/internal/ads/zzayu;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzdvo;->post(Ljava/lang/Runnable;)Z

    .line 66
    :goto_3b
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzayu;->zzbij:Ljava/lang/String;
    :try_end_3d
    .catchall {:try_start_1d .. :try_end_3d} :catchall_d2

    if-nez v1, :cond_6e

    .line 67
    :try_start_3f
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzayu;->zzebb:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_44
    .catch Ljava/lang/InterruptedException; {:try_start_3f .. :try_end_44} :catch_45
    .catchall {:try_start_3f .. :try_end_44} :catchall_d2

    goto :goto_3b

    .line 70
    :catch_45
    :try_start_45
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzayu;->zzxr()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzayu;->zzbij:Ljava/lang/String;

    const-string v1, "Interrupted, use default user agent: "

    .line 71
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzayu;->zzbij:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_5e

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_64

    :cond_5e
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_64
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzayp;->zzfe(Ljava/lang/String;)V

    goto :goto_3b

    .line 73
    :cond_68
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayu;->zzar(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzayu;->zzbij:Ljava/lang/String;

    .line 74
    :cond_6e
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzayu;->zzbij:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xa

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (Mobile; "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzayu;->zzbij:Ljava/lang/String;
    :try_end_9d
    .catchall {:try_start_45 .. :try_end_9d} :catchall_d2

    .line 75
    :try_start_9d
    invoke-static {p1}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->isCallerInstantApp()Z

    move-result p1

    if-eqz p1, :cond_c0

    .line 76
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzayu;->zzbij:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, ";aia"

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzayu;->zzbij:Ljava/lang/String;
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_b5} :catch_b6
    .catchall {:try_start_9d .. :try_end_b5} :catchall_d2

    goto :goto_c0

    :catch_b6
    move-exception p1

    .line 79
    :try_start_b7
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkv()Lcom/google/android/gms/internal/ads/zzayb;

    move-result-object p2

    const-string v1, "AdUtil.getUserAgent"

    invoke-virtual {p2, p1, v1}, Lcom/google/android/gms/internal/ads/zzayb;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 80
    :cond_c0
    :goto_c0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzayu;->zzbij:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzayu;->zzbij:Ljava/lang/String;

    .line 81
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzayu;->zzbij:Ljava/lang/String;

    monitor-exit v0

    return-object p1

    :catchall_d2
    move-exception p1

    .line 82
    monitor-exit v0
    :try_end_d4
    .catchall {:try_start_b7 .. :try_end_d4} :catchall_d2

    throw p1

    return-void
.end method
