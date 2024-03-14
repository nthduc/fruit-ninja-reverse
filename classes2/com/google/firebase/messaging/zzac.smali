.class final Lcom/google/firebase/messaging/zzac;
.super Landroid/content/BroadcastReceiver;
.source "com.google.firebase:firebase-messaging@@20.1.7"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation


# instance fields
.field final synthetic zza:Lcom/google/firebase/messaging/zzad;

.field private zzb:Lcom/google/firebase/messaging/zzad;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/firebase/messaging/zzad;Lcom/google/firebase/messaging/zzad;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/firebase/messaging/zzac;->zza:Lcom/google/firebase/messaging/zzad;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/firebase/messaging/zzac;->zzb:Lcom/google/firebase/messaging/zzad;

    return-void
.end method


# virtual methods
.method public final declared-synchronized onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    monitor-enter p0

    .line 4
    :try_start_1
    iget-object p2, p0, Lcom/google/firebase/messaging/zzac;->zzb:Lcom/google/firebase/messaging/zzad;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_33

    if-nez p2, :cond_7

    .line 5
    monitor-exit p0

    return-void

    .line 6
    :cond_7
    :try_start_7
    iget-object p2, p0, Lcom/google/firebase/messaging/zzac;->zzb:Lcom/google/firebase/messaging/zzad;

    invoke-static {p2}, Lcom/google/firebase/messaging/zzad;->zza(Lcom/google/firebase/messaging/zzad;)Z

    move-result p2
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_33

    if-nez p2, :cond_11

    .line 7
    monitor-exit p0

    return-void

    .line 8
    :cond_11
    :try_start_11
    invoke-static {}, Lcom/google/firebase/messaging/zzad;->zza()Z

    move-result p2

    if-eqz p2, :cond_1e

    const-string p2, "FirebaseMessaging"

    const-string v0, "Connectivity changed. Starting background sync."

    .line 9
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    :cond_1e
    iget-object p2, p0, Lcom/google/firebase/messaging/zzac;->zzb:Lcom/google/firebase/messaging/zzad;

    invoke-static {p2}, Lcom/google/firebase/messaging/zzad;->zzb(Lcom/google/firebase/messaging/zzad;)Lcom/google/firebase/messaging/zzab;

    move-result-object p2

    iget-object v0, p0, Lcom/google/firebase/messaging/zzac;->zzb:Lcom/google/firebase/messaging/zzad;

    const-wide/16 v1, 0x0

    invoke-virtual {p2, v0, v1, v2}, Lcom/google/firebase/messaging/zzab;->zza(Ljava/lang/Runnable;J)V

    .line 11
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lcom/google/firebase/messaging/zzac;->zzb:Lcom/google/firebase/messaging/zzad;
    :try_end_31
    .catchall {:try_start_11 .. :try_end_31} :catchall_33

    .line 13
    monitor-exit p0

    return-void

    :catchall_33
    move-exception p1

    monitor-exit p0

    throw p1
.end method
