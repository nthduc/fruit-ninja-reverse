.class final synthetic Lcom/google/android/gms/internal/ads/zzaaz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdwe;


# instance fields
.field private final zzclq:Lcom/google/android/gms/internal/ads/zzaax;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzaax;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaaz;->zzclq:Lcom/google/android/gms/internal/ads/zzaax;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaaz;->zzclq:Lcom/google/android/gms/internal/ads/zzaax;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaax;->zzrj()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
