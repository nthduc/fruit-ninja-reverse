.class public final Lcom/google/android/gms/common/images/ImageManager;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.2.1"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/images/ImageManager$zaa;,
        Lcom/google/android/gms/common/images/ImageManager$zac;,
        Lcom/google/android/gms/common/images/ImageManager$zab;,
        Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;,
        Lcom/google/android/gms/common/images/ImageManager$zad;,
        Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;
    }
.end annotation


# static fields
.field private static final zamm:Ljava/lang/Object;

.field private static zamn:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private static zamo:Lcom/google/android/gms/common/images/ImageManager;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final zamp:Ljava/util/concurrent/ExecutorService;

.field private final zamq:Lcom/google/android/gms/common/images/ImageManager$zaa;

.field private final zamr:Lcom/google/android/gms/internal/base/zak;

.field private final zams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/images/zaa;",
            "Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private final zamt:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/net/Uri;",
            "Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private final zamu:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/net/Uri;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/images/ImageManager;->zamm:Ljava/lang/Object;

    .line 57
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/images/ImageManager;->zamn:Ljava/util/HashSet;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Z)V
    .registers 4

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/images/ImageManager;->mContext:Landroid/content/Context;

    .line 8
    new-instance p1, Lcom/google/android/gms/internal/base/zap;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/base/zap;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/android/gms/common/images/ImageManager;->mHandler:Landroid/os/Handler;

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/base/zal;->zact()Lcom/google/android/gms/internal/base/zam;

    move-result-object p1

    sget p2, Lcom/google/android/gms/internal/base/zaq;->zasj:I

    const/4 v0, 0x4

    .line 11
    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/base/zam;->zaa(II)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/images/ImageManager;->zamp:Ljava/util/concurrent/ExecutorService;

    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lcom/google/android/gms/common/images/ImageManager;->zamq:Lcom/google/android/gms/common/images/ImageManager$zaa;

    .line 13
    new-instance p1, Lcom/google/android/gms/internal/base/zak;

    invoke-direct {p1}, Lcom/google/android/gms/internal/base/zak;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/images/ImageManager;->zamr:Lcom/google/android/gms/internal/base/zak;

    .line 14
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/images/ImageManager;->zams:Ljava/util/Map;

    .line 15
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/images/ImageManager;->zamt:Ljava/util/Map;

    .line 16
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/images/ImageManager;->zamu:Ljava/util/Map;

    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/google/android/gms/common/images/ImageManager;
    .registers 3

    .line 2
    sget-object v0, Lcom/google/android/gms/common/images/ImageManager;->zamo:Lcom/google/android/gms/common/images/ImageManager;

    if-nez v0, :cond_c

    .line 3
    new-instance v0, Lcom/google/android/gms/common/images/ImageManager;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/common/images/ImageManager;-><init>(Landroid/content/Context;Z)V

    sput-object v0, Lcom/google/android/gms/common/images/ImageManager;->zamo:Lcom/google/android/gms/common/images/ImageManager;

    .line 4
    :cond_c
    sget-object p0, Lcom/google/android/gms/common/images/ImageManager;->zamo:Lcom/google/android/gms/common/images/ImageManager;

    return-object p0
.end method

.method static synthetic zaa(Lcom/google/android/gms/common/images/ImageManager;Lcom/google/android/gms/common/images/zac;)Landroid/graphics/Bitmap;
    .registers 2

    .line 48
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/images/ImageManager;->zaa(Lcom/google/android/gms/common/images/zac;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private final zaa(Lcom/google/android/gms/common/images/zac;)Landroid/graphics/Bitmap;
    .registers 3

    .line 41
    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager;->zamq:Lcom/google/android/gms/common/images/ImageManager$zaa;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return-object p1

    .line 43
    :cond_6
    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/images/ImageManager$zaa;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic zaa(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/google/android/gms/common/images/ImageManager;->zams:Ljava/util/Map;

    return-object p0
.end method

.method private final zaa(Lcom/google/android/gms/common/images/zaa;)V
    .registers 3

    const-string v0, "ImageManager.loadImage() must be called in the main thread"

    .line 37
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Asserts;->checkMainThread(Ljava/lang/String;)V

    .line 38
    new-instance v0, Lcom/google/android/gms/common/images/ImageManager$zad;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/common/images/ImageManager$zad;-><init>(Lcom/google/android/gms/common/images/ImageManager;Lcom/google/android/gms/common/images/zaa;)V

    .line 39
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method static synthetic zab(Lcom/google/android/gms/common/images/ImageManager;)Landroid/content/Context;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/google/android/gms/common/images/ImageManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic zac(Lcom/google/android/gms/common/images/ImageManager;)Lcom/google/android/gms/internal/base/zak;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/google/android/gms/common/images/ImageManager;->zamr:Lcom/google/android/gms/internal/base/zak;

    return-object p0
.end method

.method static synthetic zaca()Ljava/lang/Object;
    .registers 1

    .line 51
    sget-object v0, Lcom/google/android/gms/common/images/ImageManager;->zamm:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic zacb()Ljava/util/HashSet;
    .registers 1

    .line 52
    sget-object v0, Lcom/google/android/gms/common/images/ImageManager;->zamn:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic zad(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/google/android/gms/common/images/ImageManager;->zamu:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic zae(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/google/android/gms/common/images/ImageManager;->zamt:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic zaf(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/concurrent/ExecutorService;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/google/android/gms/common/images/ImageManager;->zamp:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method static synthetic zag(Lcom/google/android/gms/common/images/ImageManager;)Landroid/os/Handler;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/google/android/gms/common/images/ImageManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic zah(Lcom/google/android/gms/common/images/ImageManager;)Lcom/google/android/gms/common/images/ImageManager$zaa;
    .registers 1

    .line 55
    iget-object p0, p0, Lcom/google/android/gms/common/images/ImageManager;->zamq:Lcom/google/android/gms/common/images/ImageManager$zaa;

    return-object p0
.end method


# virtual methods
.method public final loadImage(Landroid/widget/ImageView;I)V
    .registers 4

    .line 21
    new-instance v0, Lcom/google/android/gms/common/images/zab;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/common/images/zab;-><init>(Landroid/widget/ImageView;I)V

    .line 22
    invoke-direct {p0, v0}, Lcom/google/android/gms/common/images/ImageManager;->zaa(Lcom/google/android/gms/common/images/zaa;)V

    return-void
.end method

.method public final loadImage(Landroid/widget/ImageView;Landroid/net/Uri;)V
    .registers 4

    .line 18
    new-instance v0, Lcom/google/android/gms/common/images/zab;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/common/images/zab;-><init>(Landroid/widget/ImageView;Landroid/net/Uri;)V

    .line 19
    invoke-direct {p0, v0}, Lcom/google/android/gms/common/images/ImageManager;->zaa(Lcom/google/android/gms/common/images/zaa;)V

    return-void
.end method

.method public final loadImage(Landroid/widget/ImageView;Landroid/net/Uri;I)V
    .registers 5

    .line 24
    new-instance v0, Lcom/google/android/gms/common/images/zab;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/common/images/zab;-><init>(Landroid/widget/ImageView;Landroid/net/Uri;)V

    .line 26
    iput p3, v0, Lcom/google/android/gms/common/images/zaa;->zand:I

    .line 27
    invoke-direct {p0, v0}, Lcom/google/android/gms/common/images/ImageManager;->zaa(Lcom/google/android/gms/common/images/zaa;)V

    return-void
.end method

.method public final loadImage(Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;Landroid/net/Uri;)V
    .registers 4

    .line 29
    new-instance v0, Lcom/google/android/gms/common/images/zad;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/common/images/zad;-><init>(Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;Landroid/net/Uri;)V

    .line 30
    invoke-direct {p0, v0}, Lcom/google/android/gms/common/images/ImageManager;->zaa(Lcom/google/android/gms/common/images/zaa;)V

    return-void
.end method

.method public final loadImage(Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;Landroid/net/Uri;I)V
    .registers 5

    .line 32
    new-instance v0, Lcom/google/android/gms/common/images/zad;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/common/images/zad;-><init>(Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;Landroid/net/Uri;)V

    .line 34
    iput p3, v0, Lcom/google/android/gms/common/images/zaa;->zand:I

    .line 35
    invoke-direct {p0, v0}, Lcom/google/android/gms/common/images/ImageManager;->zaa(Lcom/google/android/gms/common/images/zaa;)V

    return-void
.end method
