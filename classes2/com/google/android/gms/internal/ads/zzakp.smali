.class final Lcom/google/android/gms/internal/ads/zzakp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzahq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzahq<",
        "Lcom/google/android/gms/internal/ads/zzbgj;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzdhc:Lcom/google/android/gms/internal/ads/zzakk;

.field private final zzdhd:Lcom/google/android/gms/internal/ads/zzahq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzahq<",
            "-",
            "Lcom/google/android/gms/internal/ads/zzalp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzakk;Lcom/google/android/gms/internal/ads/zzahq;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzahq<",
            "-",
            "Lcom/google/android/gms/internal/ads/zzalp;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzakp;->zzdhc:Lcom/google/android/gms/internal/ads/zzakk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzakp;->zzdhd:Lcom/google/android/gms/internal/ads/zzahq;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzakp;)Lcom/google/android/gms/internal/ads/zzahq;
    .registers 1

    .line 7
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzakp;->zzdhd:Lcom/google/android/gms/internal/ads/zzahq;

    return-object p0
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .registers 4

    .line 4
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbgj;

    .line 5
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzakp;->zzdhd:Lcom/google/android/gms/internal/ads/zzahq;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakp;->zzdhc:Lcom/google/android/gms/internal/ads/zzakk;

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzahq;->zza(Ljava/lang/Object;Ljava/util/Map;)V

    return-void
.end method
