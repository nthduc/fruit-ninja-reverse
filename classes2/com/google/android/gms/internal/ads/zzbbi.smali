.class final Lcom/google/android/gms/internal/ads/zzbbi;
.super Ljava/lang/Thread;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"


# instance fields
.field private final synthetic zzecs:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbbj;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbbi;->zzecs:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbbu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbbu;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbbi;->zzecs:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbbu;->zzes(Ljava/lang/String;)V

    return-void
.end method
