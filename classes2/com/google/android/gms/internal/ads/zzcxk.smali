.class final synthetic Lcom/google/android/gms/internal/ads/zzcxk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbhu;


# instance fields
.field private final zzgci:Lcom/google/android/gms/internal/ads/zzbgj;

.field private final zzgnx:Lcom/google/android/gms/internal/ads/zzckj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzckj;Lcom/google/android/gms/internal/ads/zzbgj;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcxk;->zzgnx:Lcom/google/android/gms/internal/ads/zzckj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcxk;->zzgci:Lcom/google/android/gms/internal/ads/zzbgj;

    return-void
.end method


# virtual methods
.method public final zzai(Z)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcxk;->zzgnx:Lcom/google/android/gms/internal/ads/zzckj;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcxk;->zzgci:Lcom/google/android/gms/internal/ads/zzbgj;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzckj;->zzaoc()V

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbgj;->zzabq()V

    .line 4
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbgj;->zzabw()Lcom/google/android/gms/internal/ads/zzbhv;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbhv;->zzabi()V

    return-void
.end method
