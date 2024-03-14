.class final synthetic Lcom/google/android/gms/internal/ads/zzaya;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzdyz:Lcom/google/android/gms/internal/ads/zzayb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzayb;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdyz:Lcom/google/android/gms/internal/ads/zzayb;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaya;->zzdyz:Lcom/google/android/gms/internal/ads/zzayb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzayb;->zzww()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
