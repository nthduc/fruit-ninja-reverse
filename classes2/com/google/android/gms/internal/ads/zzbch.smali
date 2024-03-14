.class public final Lcom/google/android/gms/internal/ads/zzbch;
.super Lcom/google/android/gms/internal/ads/zzbcg;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/zzbcg<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final zzefa:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbcg;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbch;->zzefa:Ljava/lang/Object;

    return-void
.end method

.method public static zzl(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzbch;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/google/android/gms/internal/ads/zzbch<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbch;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzbch;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final zzyw()V
    .registers 2

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbch;->zzefa:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzbcg;->set(Ljava/lang/Object;)Z

    return-void
.end method
