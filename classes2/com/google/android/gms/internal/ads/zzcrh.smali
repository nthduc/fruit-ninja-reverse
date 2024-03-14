.class final Lcom/google/android/gms/internal/ads/zzcrh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdyr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdyr<",
        "Landroid/os/ParcelFileDescriptor;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzgli:Lcom/google/android/gms/internal/ads/zzasw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcqv;Lcom/google/android/gms/internal/ads/zzasw;)V
    .registers 3

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcrh;->zzgli:Lcom/google/android/gms/internal/ads/zzasw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .registers 3

    .line 7
    check-cast p1, Landroid/os/ParcelFileDescriptor;

    .line 8
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcrh;->zzgli:Lcom/google/android/gms/internal/ads/zzasw;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzasw;->zzb(Landroid/os/ParcelFileDescriptor;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception p1

    const-string v0, "Service can\'t call client"

    .line 11
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzayp;->zza(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzb(Ljava/lang/Throwable;)V
    .registers 3

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcrh;->zzgli:Lcom/google/android/gms/internal/ads/zzasw;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzazy;->zzc(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzazy;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzasw;->zza(Lcom/google/android/gms/internal/ads/zzazy;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception p1

    const-string v0, "Service can\'t call client"

    .line 5
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzayp;->zza(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
