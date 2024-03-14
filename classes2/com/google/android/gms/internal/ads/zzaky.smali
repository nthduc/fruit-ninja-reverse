.class final synthetic Lcom/google/android/gms/internal/ads/zzaky;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzdhj:Lcom/google/android/gms/internal/ads/zzakr;

.field private final zzdhm:Lcom/google/android/gms/internal/ads/zzalm;

.field private final zzdhn:Lcom/google/android/gms/internal/ads/zzaki;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzakr;Lcom/google/android/gms/internal/ads/zzalm;Lcom/google/android/gms/internal/ads/zzaki;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaky;->zzdhj:Lcom/google/android/gms/internal/ads/zzakr;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaky;->zzdhm:Lcom/google/android/gms/internal/ads/zzalm;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzaky;->zzdhn:Lcom/google/android/gms/internal/ads/zzaki;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaky;->zzdhj:Lcom/google/android/gms/internal/ads/zzakr;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaky;->zzdhm:Lcom/google/android/gms/internal/ads/zzalm;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaky;->zzdhn:Lcom/google/android/gms/internal/ads/zzaki;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzakr;->zza(Lcom/google/android/gms/internal/ads/zzalm;Lcom/google/android/gms/internal/ads/zzaki;)V

    return-void
.end method
