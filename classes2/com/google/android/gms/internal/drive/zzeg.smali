.class final Lcom/google/android/gms/internal/drive/zzeg;
.super Lcom/google/android/gms/internal/drive/zzir;


# instance fields
.field private final zzgw:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/os/Looper;Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/drive/zzir;-><init>(Landroid/os/Looper;)V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/drive/zzeg;->zzgw:Landroid/content/Context;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/google/android/gms/internal/drive/zzef;)V
    .registers 4

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/drive/zzeg;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 8

    .line 4
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const-string v2, "EventCallback"

    const/4 v3, 0x1

    if-eq v0, v3, :cond_18

    .line 32
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzee;->zzai()Lcom/google/android/gms/common/internal/GmsLogger;

    move-result-object p1

    new-array v0, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/gms/internal/drive/zzeg;->zzgw:Landroid/content/Context;

    aput-object v3, v0, v1

    const-string v1, "Don\'t know how to handle this event in context %s"

    invoke-virtual {p1, v2, v1, v0}, Lcom/google/android/gms/common/internal/GmsLogger;->efmt(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 5
    :cond_18
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/util/Pair;

    .line 6
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/drive/events/zzi;

    .line 7
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/drive/events/DriveEvent;

    .line 8
    invoke-interface {p1}, Lcom/google/android/gms/drive/events/DriveEvent;->getType()I

    move-result v4

    if-eq v4, v3, :cond_8b

    const/4 v5, 0x2

    if-eq v4, v5, :cond_83

    const/4 v5, 0x3

    if-eq v4, v5, :cond_5e

    const/4 v5, 0x4

    if-eq v4, v5, :cond_56

    const/16 v5, 0x8

    if-eq v4, v5, :cond_45

    .line 30
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzee;->zzai()Lcom/google/android/gms/common/internal/GmsLogger;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    const-string p1, "Unexpected event: %s"

    invoke-virtual {v0, v2, p1, v3}, Lcom/google/android/gms/common/internal/GmsLogger;->wfmt(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 24
    :cond_45
    check-cast p1, Lcom/google/android/gms/drive/events/zzr;

    .line 25
    invoke-virtual {p1}, Lcom/google/android/gms/drive/events/zzr;->zzac()Lcom/google/android/gms/internal/drive/zzh;

    move-result-object p1

    .line 26
    new-instance v1, Lcom/google/android/gms/internal/drive/zze;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/drive/zze;-><init>(Lcom/google/android/gms/internal/drive/zzh;)V

    .line 27
    check-cast v0, Lcom/google/android/gms/drive/events/zzl;

    .line 28
    invoke-interface {v0, v1}, Lcom/google/android/gms/drive/events/zzl;->zza(Lcom/google/android/gms/drive/events/zzk;)V

    return-void

    .line 21
    :cond_56
    check-cast v0, Lcom/google/android/gms/drive/events/zzd;

    check-cast p1, Lcom/google/android/gms/drive/events/zzb;

    .line 22
    invoke-interface {v0, p1}, Lcom/google/android/gms/drive/events/zzd;->zza(Lcom/google/android/gms/drive/events/zzb;)V

    return-void

    .line 13
    :cond_5e
    check-cast v0, Lcom/google/android/gms/drive/events/zzq;

    check-cast p1, Lcom/google/android/gms/drive/events/zzo;

    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/drive/events/zzo;->zzz()Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v1

    if-eqz v1, :cond_75

    .line 16
    new-instance v2, Lcom/google/android/gms/drive/MetadataBuffer;

    invoke-direct {v2, v1}, Lcom/google/android/gms/drive/MetadataBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    .line 17
    new-instance v1, Lcom/google/android/gms/internal/drive/zzeh;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/drive/zzeh;-><init>(Lcom/google/android/gms/drive/MetadataBuffer;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/drive/events/zzq;->zza(Lcom/google/android/gms/drive/events/zzn;)V

    .line 18
    :cond_75
    invoke-virtual {p1}, Lcom/google/android/gms/drive/events/zzo;->zzaa()Z

    move-result v1

    if-eqz v1, :cond_82

    .line 19
    invoke-virtual {p1}, Lcom/google/android/gms/drive/events/zzo;->zzab()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/drive/events/zzq;->zzc(I)V

    :cond_82
    return-void

    .line 11
    :cond_83
    check-cast v0, Lcom/google/android/gms/drive/events/CompletionListener;

    check-cast p1, Lcom/google/android/gms/drive/events/CompletionEvent;

    invoke-interface {v0, p1}, Lcom/google/android/gms/drive/events/CompletionListener;->onCompletion(Lcom/google/android/gms/drive/events/CompletionEvent;)V

    return-void

    .line 9
    :cond_8b
    check-cast v0, Lcom/google/android/gms/drive/events/ChangeListener;

    check-cast p1, Lcom/google/android/gms/drive/events/ChangeEvent;

    invoke-interface {v0, p1}, Lcom/google/android/gms/drive/events/ChangeListener;->onChange(Lcom/google/android/gms/drive/events/ChangeEvent;)V

    return-void
.end method
