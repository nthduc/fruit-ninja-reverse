.class final synthetic Lcom/google/android/gms/internal/ads/zzdcq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdvu;


# static fields
.field static final zzdwz:Lcom/google/android/gms/internal/ads/zzdvu;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdcq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdcq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdcq;->zzdwz:Lcom/google/android/gms/internal/ads/zzdvu;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_a
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdct;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzdct;-><init>(Ljava/util/ArrayList;)V

    return-object v0
.end method
