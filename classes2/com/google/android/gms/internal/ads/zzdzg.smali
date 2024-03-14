.class final Lcom/google/android/gms/internal/ads/zzdzg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzhtp:Ljava/lang/Runnable;

.field private final synthetic zzhtq:Lcom/google/android/gms/internal/ads/zzdzd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdzd;Ljava/lang/Runnable;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdzg;->zzhtq:Lcom/google/android/gms/internal/ads/zzdzd;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdzg;->zzhtp:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdzg;->zzhtq:Lcom/google/android/gms/internal/ads/zzdzd;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzdzd;->zzhtl:Z

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdzg;->zzhtp:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdzg;->zzhtp:Ljava/lang/Runnable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
