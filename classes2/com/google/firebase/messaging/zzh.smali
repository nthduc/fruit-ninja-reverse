.class final synthetic Lcom/google/firebase/messaging/zzh;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-messaging@@20.1.7"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/firebase/messaging/zzf;

.field private final zzb:Landroid/content/Intent;

.field private final zzc:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method constructor <init>(Lcom/google/firebase/messaging/zzf;Landroid/content/Intent;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/zzh;->zza:Lcom/google/firebase/messaging/zzf;

    iput-object p2, p0, Lcom/google/firebase/messaging/zzh;->zzb:Landroid/content/Intent;

    iput-object p3, p0, Lcom/google/firebase/messaging/zzh;->zzc:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/zzh;->zza:Lcom/google/firebase/messaging/zzf;

    iget-object v1, p0, Lcom/google/firebase/messaging/zzh;->zzb:Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/firebase/messaging/zzh;->zzc:Lcom/google/android/gms/tasks/TaskCompletionSource;

    const/4 v3, 0x0

    .line 2
    :try_start_7
    invoke-virtual {v0, v1}, Lcom/google/firebase/messaging/zzf;->zzc(Landroid/content/Intent;)V
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_e

    .line 3
    invoke-virtual {v2, v3}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void

    :catchall_e
    move-exception v0

    .line 5
    invoke-virtual {v2, v3}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 6
    throw v0
.end method
