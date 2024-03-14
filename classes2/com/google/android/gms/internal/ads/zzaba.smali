.class final synthetic Lcom/google/android/gms/internal/ads/zzaba;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdwe;


# instance fields
.field private final zzclq:Lcom/google/android/gms/internal/ads/zzaax;

.field private final zzclr:Lcom/google/android/gms/internal/ads/zzaaq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzaax;Lcom/google/android/gms/internal/ads/zzaaq;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaba;->zzclq:Lcom/google/android/gms/internal/ads/zzaax;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaba;->zzclr:Lcom/google/android/gms/internal/ads/zzaaq;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaba;->zzclq:Lcom/google/android/gms/internal/ads/zzaax;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaba;->zzclr:Lcom/google/android/gms/internal/ads/zzaaq;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzaax;->zze(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
