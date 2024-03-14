.class final Lcom/google/android/gms/internal/ads/zzeix;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"


# instance fields
.field private final buffer:[B

.field private final zziew:Lcom/google/android/gms/internal/ads/zzejj;


# direct methods
.method private constructor <init>(I)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeix;->buffer:[B

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeix;->buffer:[B

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzejj;->zzw([B)Lcom/google/android/gms/internal/ads/zzejj;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeix;->zziew:Lcom/google/android/gms/internal/ads/zzejj;

    return-void
.end method

.method synthetic constructor <init>(ILcom/google/android/gms/internal/ads/zzeio;)V
    .registers 3

    .line 8
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzeix;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final zzben()Lcom/google/android/gms/internal/ads/zzeip;
    .registers 3

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeix;->zziew:Lcom/google/android/gms/internal/ads/zzejj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzejj;->zzbfq()V

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeiz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeix;->buffer:[B

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzeiz;-><init>([B)V

    return-object v0
.end method

.method public final zzbeo()Lcom/google/android/gms/internal/ads/zzejj;
    .registers 2

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeix;->zziew:Lcom/google/android/gms/internal/ads/zzejj;

    return-object v0
.end method
