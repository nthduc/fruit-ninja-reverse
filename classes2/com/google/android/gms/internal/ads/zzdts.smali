.class final synthetic Lcom/google/android/gms/internal/ads/zzdts;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-gass@@19.4.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzhmw:Lcom/google/android/gms/internal/ads/zzdtp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdtp;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdts;->zzhmw:Lcom/google/android/gms/internal/ads/zzdtp;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdts;->zzhmw:Lcom/google/android/gms/internal/ads/zzdtp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdtp;->zzawc()Lcom/google/android/gms/internal/ads/zzcf$zza;

    move-result-object v0

    return-object v0
.end method
