.class final Lcom/google/android/gms/internal/ads/zzmr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzbek:Lcom/google/android/gms/internal/ads/zzmn;

.field private final synthetic zzbel:Ljava/io/IOException;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzmn;Ljava/io/IOException;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzmr;->zzbek:Lcom/google/android/gms/internal/ads/zzmn;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzmr;->zzbel:Ljava/io/IOException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmr;->zzbek:Lcom/google/android/gms/internal/ads/zzmn;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzmn;->zze(Lcom/google/android/gms/internal/ads/zzmn;)Lcom/google/android/gms/internal/ads/zzmy;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzmr;->zzbel:Ljava/io/IOException;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzmy;->zzb(Ljava/io/IOException;)V

    return-void
.end method
