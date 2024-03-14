.class final Lcom/google/android/gms/drive/events/zzh;
.super Ljava/lang/Thread;


# instance fields
.field private final synthetic zzcn:Ljava/util/concurrent/CountDownLatch;

.field private final synthetic zzco:Lcom/google/android/gms/drive/events/DriveEventService;


# direct methods
.method constructor <init>(Lcom/google/android/gms/drive/events/DriveEventService;Ljava/util/concurrent/CountDownLatch;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/drive/events/zzh;->zzco:Lcom/google/android/gms/drive/events/DriveEventService;

    iput-object p2, p0, Lcom/google/android/gms/drive/events/zzh;->zzcn:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 2
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/drive/events/zzh;->zzco:Lcom/google/android/gms/drive/events/DriveEventService;

    new-instance v1, Lcom/google/android/gms/drive/events/DriveEventService$zza;

    iget-object v2, p0, Lcom/google/android/gms/drive/events/zzh;->zzco:Lcom/google/android/gms/drive/events/DriveEventService;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/drive/events/DriveEventService$zza;-><init>(Lcom/google/android/gms/drive/events/DriveEventService;Lcom/google/android/gms/drive/events/zzh;)V

    iput-object v1, v0, Lcom/google/android/gms/drive/events/DriveEventService;->zzck:Lcom/google/android/gms/drive/events/DriveEventService$zza;

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/drive/events/zzh;->zzco:Lcom/google/android/gms/drive/events/DriveEventService;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/gms/drive/events/DriveEventService;->zzcl:Z

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/drive/events/zzh;->zzcn:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 6
    invoke-static {}, Landroid/os/Looper;->loop()V
    :try_end_1c
    .catchall {:try_start_0 .. :try_end_1c} :catchall_2e

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/drive/events/zzh;->zzco:Lcom/google/android/gms/drive/events/DriveEventService;

    invoke-static {v0}, Lcom/google/android/gms/drive/events/DriveEventService;->zzb(Lcom/google/android/gms/drive/events/DriveEventService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/drive/events/zzh;->zzco:Lcom/google/android/gms/drive/events/DriveEventService;

    invoke-static {v0}, Lcom/google/android/gms/drive/events/DriveEventService;->zzb(Lcom/google/android/gms/drive/events/DriveEventService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_2d
    return-void

    :catchall_2e
    move-exception v0

    .line 9
    iget-object v1, p0, Lcom/google/android/gms/drive/events/zzh;->zzco:Lcom/google/android/gms/drive/events/DriveEventService;

    invoke-static {v1}, Lcom/google/android/gms/drive/events/DriveEventService;->zzb(Lcom/google/android/gms/drive/events/DriveEventService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    if-eqz v1, :cond_40

    .line 10
    iget-object v1, p0, Lcom/google/android/gms/drive/events/zzh;->zzco:Lcom/google/android/gms/drive/events/DriveEventService;

    invoke-static {v1}, Lcom/google/android/gms/drive/events/DriveEventService;->zzb(Lcom/google/android/gms/drive/events/DriveEventService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_40
    throw v0
.end method
