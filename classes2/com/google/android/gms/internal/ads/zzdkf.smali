.class final synthetic Lcom/google/android/gms/internal/ads/zzdkf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdlk;


# instance fields
.field private final zzhav:Lcom/google/android/gms/internal/ads/zzsg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzsg;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdkf;->zzhav:Lcom/google/android/gms/internal/ads/zzsg;

    return-void
.end method


# virtual methods
.method public final zzq(Ljava/lang/Object;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkf;->zzhav:Lcom/google/android/gms/internal/ads/zzsg;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzsh;

    .line 2
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzsh;->zza(Lcom/google/android/gms/internal/ads/zzsg;)V

    return-void
.end method
