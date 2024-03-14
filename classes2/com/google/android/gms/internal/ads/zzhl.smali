.class final Lcom/google/android/gms/internal/ads/zzhl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/google/android/gms/internal/ads/zzna;
.implements Lcom/google/android/gms/internal/ads/zznc;
.implements Lcom/google/android/gms/internal/ads/zzof;


# instance fields
.field private final handler:Landroid/os/Handler;

.field private repeatMode:I

.field private state:I

.field private final zzaep:[Lcom/google/android/gms/internal/ads/zzhx;

.field private final zzaeq:Lcom/google/android/gms/internal/ads/zzog;

.field private final zzaes:Landroid/os/Handler;

.field private final zzaev:Lcom/google/android/gms/internal/ads/zzid;

.field private final zzaew:Lcom/google/android/gms/internal/ads/zzia;

.field private zzaey:Z

.field private zzafc:Z

.field private zzafd:Lcom/google/android/gms/internal/ads/zzhy;

.field private zzafh:Lcom/google/android/gms/internal/ads/zzhu;

.field private zzafi:Lcom/google/android/gms/internal/ads/zzhn;

.field private final zzafy:[Lcom/google/android/gms/internal/ads/zzhw;

.field private final zzafz:Lcom/google/android/gms/internal/ads/zzhs;

.field private zzaga:Lcom/google/android/gms/internal/ads/zzmz;

.field private final zzagc:Lcom/google/android/gms/internal/ads/zzpl;

.field private final zzagd:Landroid/os/HandlerThread;

.field private final zzage:Lcom/google/android/gms/internal/ads/zzhc;

.field private zzagf:Lcom/google/android/gms/internal/ads/zzhx;

.field private zzagg:Lcom/google/android/gms/internal/ads/zzpd;

.field private zzagh:[Lcom/google/android/gms/internal/ads/zzhx;

.field private zzagi:Z

.field private zzagj:Z

.field private zzagk:I

.field private zzagl:I

.field private zzagm:J

.field private zzagn:I

.field private zzago:Lcom/google/android/gms/internal/ads/zzhm;

.field private zzagp:J

.field private zzagq:Lcom/google/android/gms/internal/ads/zzhk;

.field private zzagr:Lcom/google/android/gms/internal/ads/zzhk;

.field private zzags:Lcom/google/android/gms/internal/ads/zzhk;


# direct methods
.method public constructor <init>([Lcom/google/android/gms/internal/ads/zzhx;Lcom/google/android/gms/internal/ads/zzog;Lcom/google/android/gms/internal/ads/zzhs;ZILandroid/os/Handler;Lcom/google/android/gms/internal/ads/zzhn;Lcom/google/android/gms/internal/ads/zzhc;)V
    .registers 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzaep:[Lcom/google/android/gms/internal/ads/zzhx;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzaeq:Lcom/google/android/gms/internal/ads/zzog;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzafz:Lcom/google/android/gms/internal/ads/zzhs;

    .line 5
    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzaey:Z

    const/4 p3, 0x0

    .line 6
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzhl;->repeatMode:I

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzaes:Landroid/os/Handler;

    const/4 p4, 0x1

    .line 8
    iput p4, p0, Lcom/google/android/gms/internal/ads/zzhl;->state:I

    .line 9
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzafi:Lcom/google/android/gms/internal/ads/zzhn;

    .line 10
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzage:Lcom/google/android/gms/internal/ads/zzhc;

    .line 11
    array-length p4, p1

    new-array p4, p4, [Lcom/google/android/gms/internal/ads/zzhw;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzafy:[Lcom/google/android/gms/internal/ads/zzhw;

    const/4 p4, 0x0

    .line 12
    :goto_1d
    array-length p5, p1

    if-ge p4, p5, :cond_32

    .line 13
    aget-object p5, p1, p4

    invoke-interface {p5, p4}, Lcom/google/android/gms/internal/ads/zzhx;->setIndex(I)V

    .line 14
    iget-object p5, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzafy:[Lcom/google/android/gms/internal/ads/zzhw;

    aget-object p6, p1, p4

    invoke-interface {p6}, Lcom/google/android/gms/internal/ads/zzhx;->zzdz()Lcom/google/android/gms/internal/ads/zzhw;

    move-result-object p6

    aput-object p6, p5, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_1d

    .line 16
    :cond_32
    new-instance p1, Lcom/google/android/gms/internal/ads/zzpl;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzpl;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzagc:Lcom/google/android/gms/internal/ads/zzpl;

    .line 17
    new-array p1, p3, [Lcom/google/android/gms/internal/ads/zzhx;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzagh:[Lcom/google/android/gms/internal/ads/zzhx;

    .line 18
    new-instance p1, Lcom/google/android/gms/internal/ads/zzid;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzid;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzaev:Lcom/google/android/gms/internal/ads/zzid;

    .line 19
    new-instance p1, Lcom/google/android/gms/internal/ads/zzia;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzia;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzaew:Lcom/google/android/gms/internal/ads/zzia;

    .line 20
    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/ads/zzog;->zza(Lcom/google/android/gms/internal/ads/zzof;)V

    .line 21
    sget-object p1, Lcom/google/android/gms/internal/ads/zzhu;->zzahz:Lcom/google/android/gms/internal/ads/zzhu;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzafh:Lcom/google/android/gms/internal/ads/zzhu;

    .line 22
    new-instance p1, Landroid/os/HandlerThread;

    const/16 p2, -0x10

    const-string p3, "ExoPlayerImplInternal:Handler"

    invoke-direct {p1, p3, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzagd:Landroid/os/HandlerThread;

    .line 23
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzagd:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 24
    new-instance p1, Landroid/os/Handler;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzagd:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhl;->handler:Landroid/os/Handler;

    return-void
.end method

.method private final setState(I)V
    .registers 5

    .line 545
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhl;->state:I

    if-eq v0, p1, :cond_11

    .line 546
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzhl;->state:I

    .line 547
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzaes:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_11
    return-void
.end method

.method private final zza(ILcom/google/android/gms/internal/ads/zzhy;Lcom/google/android/gms/internal/ads/zzhy;)I
    .registers 10

    .line 692
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzhy;->zzfg()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    move v3, p1

    const/4 p1, -0x1

    :goto_8
    if-ge v2, v0, :cond_26

    if-ne p1, v1, :cond_26

    .line 694
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzaew:Lcom/google/android/gms/internal/ads/zzia;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzaev:Lcom/google/android/gms/internal/ads/zzid;

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzhl;->repeatMode:I

    invoke-virtual {p2, v3, p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzhy;->zza(ILcom/google/android/gms/internal/ads/zzia;Lcom/google/android/gms/internal/ads/zzid;I)I

    move-result v3

    .line 695
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzaew:Lcom/google/android/gms/internal/ads/zzia;

    const/4 v4, 0x1

    .line 696
    invoke-virtual {p2, v3, p1, v4}, Lcom/google/android/gms/internal/ads/zzhy;->zza(ILcom/google/android/gms/internal/ads/zzia;Z)Lcom/google/android/gms/internal/ads/zzia;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzia;->zzafn:Ljava/lang/Object;

    .line 697
    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/ads/zzhy;->zzc(Ljava/lang/Object;)I

    move-result p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_26
    return p1
.end method

.method private final zza(IJ)J
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhd;
        }
    .end annotation

    .line 594
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhl;->zzeu()V

    const/4 v0, 0x0

    .line 595
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzagj:Z

    const/4 v1, 0x2

    .line 596
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzhl;->setState(I)V

    .line 598
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzags:Lcom/google/android/gms/internal/ads/zzhk;

    const/4 v3, 0x0

    if-nez v2, :cond_18

    .line 599
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzagq:Lcom/google/android/gms/internal/ads/zzhk;

    if-eqz p1, :cond_16

    .line 600
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhk;->release()V

    :cond_16
    move-object v4, v3

    goto :goto_2b

    :cond_18
    move-object v4, v3

    :goto_19
    if-eqz v2, :cond_2b

    .line 603
    iget v5, v2, Lcom/google/android/gms/internal/ads/zzhk;->zzafr:I

    if-ne v5, p1, :cond_25

    iget-boolean v5, v2, Lcom/google/android/gms/internal/ads/zzhk;->zzafu:Z

    if-eqz v5, :cond_25

    move-object v4, v2

    goto :goto_28

    .line 605
    :cond_25
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhk;->release()V

    .line 606
    :goto_28
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzhk;->zzafw:Lcom/google/android/gms/internal/ads/zzhk;

    goto :goto_19

    .line 607
    :cond_2b
    :goto_2b
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzags:Lcom/google/android/gms/internal/ads/zzhk;

    if-ne p1, v4, :cond_33

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzagr:Lcom/google/android/gms/internal/ads/zzhk;

    if-eq p1, v2, :cond_4b

    .line 608
    :cond_33
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzagh:[Lcom/google/android/gms/internal/ads/zzhx;

    array-length v2, p1

    const/4 v5, 0x0

    :goto_37
    if-ge v5, v2, :cond_41

    aget-object v6, p1, v5

    .line 609
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzhx;->disable()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_37

    .line 611
    :cond_41
    new-array p1, v0, [Lcom/google/android/gms/internal/ads/zzhx;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzagh:[Lcom/google/android/gms/internal/ads/zzhx;

    .line 612
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzagg:Lcom/google/android/gms/internal/ads/zzpd;

    .line 613
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzagf:Lcom/google/android/gms/internal/ads/zzhx;

    .line 614
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzags:Lcom/google/android/gms/internal/ads/zzhk;

    :cond_4b
    if-eqz v4, :cond_6c

    .line 616
    iput-object v3, v4, Lcom/google/android/gms/internal/ads/zzhk;->zzafw:Lcom/google/android/gms/internal/ads/zzhk;

    .line 617
    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzagq:Lcom/google/android/gms/internal/ads/zzhk;

    .line 618
    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzagr:Lcom/google/android/gms/internal/ads/zzhk;

    .line 619
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/ads/zzhl;->zzb(Lcom/google/android/gms/internal/ads/zzhk;)V

    .line 620
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzags:Lcom/google/android/gms/internal/ads/zzhk;

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzhk;->zzafv:Z

    if-eqz p1, :cond_65

    .line 621
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzags:Lcom/google/android/gms/internal/ads/zzhk;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzhk;->zzafm:Lcom/google/android/gms/internal/ads/zzmx;

    invoke-interface {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzmx;->zzeg(J)J

    move-result-wide p1

    move-wide p2, p1

    .line 622
    :cond_65
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzhl;->zzdq(J)V

    .line 623
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhl;->zzey()V

    goto :goto_75

    .line 624
    :cond_6c
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzagq:Lcom/google/android/gms/internal/ads/zzhk;

    .line 625
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzagr:Lcom/google/android/gms/internal/ads/zzhk;

    .line 626
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzags:Lcom/google/android/gms/internal/ads/zzhk;

    .line 627
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzhl;->zzdq(J)V

    .line 628
    :goto_75
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzhl;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-wide p2
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzhm;)Landroid/util/Pair;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzhm;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 709
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzhm;->zzafd:Lcom/google/android/gms/internal/ads/zzhy;

    .line 710
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhy;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 711
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzafd:Lcom/google/android/gms/internal/ads/zzhy;

    .line 712
    :cond_a
    :try_start_a
    iget v1, p1, Lcom/google/android/gms/internal/ads/zzhm;->zzagt:I

    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/zzhm;->zzagu:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzhl;->zzb(Lcom/google/android/gms/internal/ads/zzhy;IJ)Landroid/util/Pair;

    move-result-object p1
    :try_end_12
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a .. :try_end_12} :catch_60

    .line 716
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzafd:Lcom/google/android/gms/internal/ads/zzhy;

    if-ne v1, v0, :cond_17

    return-object p1

    .line 718
    :cond_17
    iget-object v2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    .line 719
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzaew:Lcom/google/android/gms/internal/ads/zzia;

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzhy;->zza(ILcom/google/android/gms/internal/ads/zzia;Z)Lcom/google/android/gms/internal/ads/zzia;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzia;->zzafn:Ljava/lang/Object;

    .line 720
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzhy;->zzc(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3c

    .line 722
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-static {v0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    .line 723
    :cond_3c
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzafd:Lcom/google/android/gms/internal/ads/zzhy;

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzhl;->zza(ILcom/google/android/gms/internal/ads/zzhy;Lcom/google/android/gms/internal/ads/zzhy;)I

    move-result p1

    if-eq p1, v2, :cond_5e

    .line 725
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzafd:Lcom/google/android/gms/internal/ads/zzhy;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzaew:Lcom/google/android/gms/internal/ads/zzia;

    const/4 v2, 0x0

    .line 726
    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzhy;->zza(ILcom/google/android/gms/internal/ads/zzia;Z)Lcom/google/android/gms/internal/ads/zzia;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 727
    invoke-direct {p0, v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzhl;->zzb(IJ)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    :cond_5e
    const/4 p1, 0x0

    return-object p1

    .line 715
    :catch_60
    new-instance v0, Lcom/google/android/gms/internal/ads/zzht;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzafd:Lcom/google/android/gms/internal/ads/zzhy;

    iget v2, p1, Lcom/google/android/gms/internal/ads/zzhm;->zzagt:I

    iget-wide v3, p1, Lcom/google/android/gms/internal/ads/zzhm;->zzagu:J

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzht;-><init>(Lcom/google/android/gms/internal/ads/zzhy;IJ)V

    throw v0
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzhy;IJJ)Landroid/util/Pair;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzhy;",
            "IJJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 731
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhy;->zzff()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p2, v1, v0}, Lcom/google/android/gms/internal/ads/zzoz;->zzc(III)I

    .line 732
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzaev:Lcom/google/android/gms/internal/ads/zzid;

    const/4 v5, 0x0

    move-object v2, p1

    move v3, p2

    move-wide v6, p5

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzhy;->zza(ILcom/google/android/gms/internal/ads/zzid;ZJ)Lcom/google/android/gms/internal/ads/zzid;

    const-wide p5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p2, p3, p5

    if-nez p2, :cond_24

    .line 734
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzaev:Lcom/google/android/gms/internal/ads/zzid;

    .line 735
    iget-wide p3, p2, Lcom/google/android/gms/internal/ads/zzid;->zzaiw:J

    cmp-long p2, p3, p5

    if-nez p2, :cond_24

    const/4 p1, 0x0

    return-object p1

    .line 739
    :cond_24
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzaev:Lcom/google/android/gms/internal/ads/zzid;

    .line 740
    iget-wide v2, p2, Lcom/google/android/gms/internal/ads/zzid;->zzaix:J

    add-long/2addr v2, p3

    .line 742
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzaew:Lcom/google/android/gms/internal/ads/zzia;

    .line 743
    invoke-virtual {p1, v1, p2, v1}, Lcom/google/android/gms/internal/ads/zzhy;->zza(ILcom/google/android/gms/internal/ads/zzia;Z)Lcom/google/android/gms/internal/ads/zzia;

    move-result-object p1

    .line 744
    iget-wide p1, p1, Lcom/google/android/gms/internal/ads/zzia;->zzaih:J

    cmp-long p3, p1, p5

    if-eqz p3, :cond_37

    cmp-long p3, v2, p1

    .line 747
    :cond_37
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method private final zza(JJ)V
    .registers 7

    .line 587
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhl;->handler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    add-long/2addr p1, p3

    .line 589
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p3

    sub-long/2addr p1, p3

    const-wide/16 p3, 0x0

    cmp-long v0, p1, p3

    if-gtz v0, :cond_18

    .line 591
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzhl;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 592
    :cond_18
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzhl;->handler:Landroid/os/Handler;

    invoke-virtual {p3, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/ads/zzhk;)V
    .registers 1

    :goto_0
    if-eqz p0, :cond_8

    .line 762
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhk;->release()V

    .line 763
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzhk;->zzafw:Lcom/google/android/gms/internal/ads/zzhk;

    goto :goto_0

    :cond_8
    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/ads/zzhx;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhd;
        }
    .end annotation

    .line 671
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzhx;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    .line 672
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzhx;->stop()V

    :cond_a
    return-void
.end method

.method private final zza(Ljava/lang/Object;I)V
    .registers 7

    .line 682
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhn;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzhn;-><init>(IJ)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzafi:Lcom/google/android/gms/internal/ads/zzhn;

    .line 683
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhl;->zzb(Ljava/lang/Object;I)V

    .line 684
    new-instance p1, Lcom/google/android/gms/internal/ads/zzhn;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p1, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzhn;-><init>(IJ)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzafi:Lcom/google/android/gms/internal/ads/zzhn;

    const/4 p1, 0x4

    .line 685
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzhl;->setState(I)V

    .line 686
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzhl;->zzi(Z)V

    return-void
.end method

.method private final zza([ZI)V
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhd;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 789
    new-array v1, v1, [Lcom/google/android/gms/internal/ads/zzhx;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzhl;->zzagh:[Lcom/google/android/gms/internal/ads/zzhx;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 791
    :goto_b
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzhl;->zzaep:[Lcom/google/android/gms/internal/ads/zzhx;

    array-length v5, v4

    if-ge v2, v5, :cond_99

    .line 792
    aget-object v4, v4, v2

    .line 793
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzhl;->zzags:Lcom/google/android/gms/internal/ads/zzhk;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzhk;->zzafx:Lcom/google/android/gms/internal/ads/zzoi;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzoi;->zzbhx:Lcom/google/android/gms/internal/ads/zzod;

    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/ads/zzod;->zzbg(I)Lcom/google/android/gms/internal/ads/zzob;

    move-result-object v5

    if-eqz v5, :cond_95

    .line 795
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzhl;->zzagh:[Lcom/google/android/gms/internal/ads/zzhx;

    add-int/lit8 v15, v3, 0x1

    aput-object v4, v6, v3

    .line 796
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzhx;->getState()I

    move-result v3

    if-nez v3, :cond_94

    .line 797
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzhl;->zzags:Lcom/google/android/gms/internal/ads/zzhk;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzhk;->zzafx:Lcom/google/android/gms/internal/ads/zzoi;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzoi;->zzbhz:[Lcom/google/android/gms/internal/ads/zzhz;

    aget-object v7, v3, v2

    .line 798
    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzhl;->zzaey:Z

    const/4 v6, 0x1

    if-eqz v3, :cond_3e

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzhl;->state:I

    const/4 v8, 0x3

    if-ne v3, v8, :cond_3e

    const/4 v3, 0x1

    goto :goto_3f

    :cond_3e
    const/4 v3, 0x0

    .line 799
    :goto_3f
    aget-boolean v8, p1, v2

    if-nez v8, :cond_47

    if-eqz v3, :cond_47

    const/4 v12, 0x1

    goto :goto_48

    :cond_47
    const/4 v12, 0x0

    .line 800
    :goto_48
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzob;->length()I

    move-result v6

    new-array v8, v6, [Lcom/google/android/gms/internal/ads/zzho;

    const/4 v6, 0x0

    .line 801
    :goto_4f
    array-length v9, v8

    if-ge v6, v9, :cond_5b

    .line 802
    invoke-interface {v5, v6}, Lcom/google/android/gms/internal/ads/zzob;->zzbe(I)Lcom/google/android/gms/internal/ads/zzho;

    move-result-object v9

    aput-object v9, v8, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_4f

    .line 804
    :cond_5b
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzhl;->zzags:Lcom/google/android/gms/internal/ads/zzhk;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzhk;->zzafo:[Lcom/google/android/gms/internal/ads/zznm;

    aget-object v9, v5, v2

    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/zzhl;->zzagp:J

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzhl;->zzags:Lcom/google/android/gms/internal/ads/zzhk;

    .line 805
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzhk;->zzep()J

    move-result-wide v13

    move-object v6, v4

    .line 806
    invoke-interface/range {v6 .. v14}, Lcom/google/android/gms/internal/ads/zzhx;->zza(Lcom/google/android/gms/internal/ads/zzhz;[Lcom/google/android/gms/internal/ads/zzho;Lcom/google/android/gms/internal/ads/zznm;JZJ)V

    .line 807
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzhx;->zzea()Lcom/google/android/gms/internal/ads/zzpd;

    move-result-object v5

    if-eqz v5, :cond_8f

    .line 809
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzhl;->zzagg:Lcom/google/android/gms/internal/ads/zzpd;

    if-nez v6, :cond_83

    .line 811
    iput-object v5, v0, Lcom/google/android/gms/internal/ads/zzhl;->zzagg:Lcom/google/android/gms/internal/ads/zzpd;

    .line 812
    iput-object v4, v0, Lcom/google/android/gms/internal/ads/zzhl;->zzagf:Lcom/google/android/gms/internal/ads/zzhx;

    .line 813
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzhl;->zzagg:Lcom/google/android/gms/internal/ads/zzpd;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzhl;->zzafh:Lcom/google/android/gms/internal/ads/zzhu;

    invoke-interface {v5, v6}, Lcom/google/android/gms/internal/ads/zzpd;->zzb(Lcom/google/android/gms/internal/ads/zzhu;)Lcom/google/android/gms/internal/ads/zzhu;

    goto :goto_8f

    .line 810
    :cond_83
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Multiple renderer media clocks enabled."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzhd;->zza(Ljava/lang/RuntimeException;)Lcom/google/android/gms/internal/ads/zzhd;

    move-result-object v1

    throw v1

    :cond_8f
    :goto_8f
    if-eqz v3, :cond_94

    .line 815
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzhx;->start()V

    :cond_94
    move v3, v15

    :cond_95
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_b

    :cond_99
    return-void
.end method

.method private final zzb(IJ)Landroid/util/Pair;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 729
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzafd:Lcom/google/android/gms/internal/ads/zzhy;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p0, p2, p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzhl;->zzb(Lcom/google/android/gms/internal/ads/zzhy;IJ)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method private final zzb(Lcom/google/android/gms/internal/ads/zzhy;IJ)Landroid/util/Pair;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzhy;",
            "IJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    .line 730
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzhl;->zza(Lcom/google/android/gms/internal/ads/zzhy;IJJ)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method private final zzb(Lcom/google/android/gms/internal/ads/zzhk;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhd;
        }
    .end annotation

    .line 765
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzags:Lcom/google/android/gms/internal/ads/zzhk;

    if-ne v0, p1, :cond_5

    return-void

    .line 768
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzaep:[Lcom/google/android/gms/internal/ads/zzhx;

    array-length v0, v0

    new-array v0, v0, [Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 769
    :goto_d
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzaep:[Lcom/google/android/gms/internal/ads/zzhx;

    array-length v5, v4

    if-ge v2, v5, :cond_5c

    .line 770
    aget-object v4, v4, v2

    .line 771
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzhx;->getState()I

    move-result v5

    if-eqz v5, :cond_1c

    const/4 v5, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v5, 0x0

    :goto_1d
    aput-boolean v5, v0, v2

    .line 772
    iget-object v5, p1, Lcom/google/android/gms/internal/ads/zzhk;->zzafx:Lcom/google/android/gms/internal/ads/zzoi;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzoi;->zzbhx:Lcom/google/android/gms/internal/ads/zzod;

    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/ads/zzod;->zzbg(I)Lcom/google/android/gms/internal/ads/zzob;

    move-result-object v5

    if-eqz v5, :cond_2b

    add-int/lit8 v3, v3, 0x1

    .line 775
    :cond_2b
    aget-boolean v6, v0, v2

    if-eqz v6, :cond_59

    if-eqz v5, :cond_43

    .line 776
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzhx;->zzee()Z

    move-result v5

    if-eqz v5, :cond_59

    .line 777
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzhx;->zzeb()Lcom/google/android/gms/internal/ads/zznm;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzags:Lcom/google/android/gms/internal/ads/zzhk;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzhk;->zzafo:[Lcom/google/android/gms/internal/ads/zznm;

    aget-object v6, v6, v2

    if-ne v5, v6, :cond_59

    .line 778
    :cond_43
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzagf:Lcom/google/android/gms/internal/ads/zzhx;

    if-ne v4, v5, :cond_53

    .line 779
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzagc:Lcom/google/android/gms/internal/ads/zzpl;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzagg:Lcom/google/android/gms/internal/ads/zzpd;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzpl;->zza(Lcom/google/android/gms/internal/ads/zzpd;)V

    const/4 v5, 0x0

    .line 780
    iput-object v5, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzagg:Lcom/google/android/gms/internal/ads/zzpd;

    .line 781
    iput-object v5, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzagf:Lcom/google/android/gms/internal/ads/zzhx;

    .line 782
    :cond_53
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzhl;->zza(Lcom/google/android/gms/internal/ads/zzhx;)V

    .line 783
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzhx;->disable()V

    :cond_59
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 785
    :cond_5c
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzags:Lcom/google/android/gms/internal/ads/zzhk;

    .line 786
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzaes:Landroid/os/Handler;

    const/4 v2, 0x3

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzhk;->zzafx:Lcom/google/android/gms/internal/ads/zzoi;

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 787
    invoke-direct {p0, v0, v3}, Lcom/google/android/gms/internal/ads/zzhl;->zza([ZI)V

    return-void
.end method

.method private final zzb(Ljava/lang/Object;I)V
    .registers 7

    .line 688
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzaes:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzhp;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzafd:Lcom/google/android/gms/internal/ads/zzhy;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzafi:Lcom/google/android/gms/internal/ads/zzhn;

    invoke-direct {v1, v2, p1, v3, p2}, Lcom/google/android/gms/internal/ads/zzhp;-><init>(Lcom/google/android/gms/internal/ads/zzhy;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzhn;I)V

    const/4 p1, 0x6

    invoke-virtual {v0, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 689
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private final zzdq(J)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhd;
        }
    .end annotation

    .line 630
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzags:Lcom/google/android/gms/internal/ads/zzhk;

    if-nez v0, :cond_8

    const-wide/32 v0, 0x3938700

    goto :goto_c

    .line 633
    :cond_8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhk;->zzep()J

    move-result-wide v0

    :goto_c
    add-long/2addr p1, v0

    .line 634
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzagp:J

    .line 635
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzagc:Lcom/google/android/gms/internal/ads/zzpl;

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzagp:J

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzpl;->zzel(J)V

    .line 636
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzagh:[Lcom/google/android/gms/internal/ads/zzhx;

    array-length p2, p1

    const/4 v0, 0x0

    :goto_1a
    if-ge v0, p2, :cond_26

    aget-object v1, p1, v0

    .line 637
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzagp:J

    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzhx;->zzdo(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    :cond_26
    return-void
.end method

.method private final zzdr(J)Z
    .registers 6

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-eqz v2, :cond_22

    .line 674
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzafi:Lcom/google/android/gms/internal/ads/zzhn;

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzhn;->zzagv:J

    cmp-long v2, v0, p1

    if-ltz v2, :cond_22

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzags:Lcom/google/android/gms/internal/ads/zzhk;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzhk;->zzafw:Lcom/google/android/gms/internal/ads/zzhk;

    if-eqz p1, :cond_20

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzags:Lcom/google/android/gms/internal/ads/zzhk;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzhk;->zzafw:Lcom/google/android/gms/internal/ads/zzhk;

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzhk;->zzafu:Z

    if-eqz p1, :cond_20

    goto :goto_22

    :cond_20
    const/4 p1, 0x0

    return p1

    :cond_22
    :goto_22
    const/4 p1, 0x1

    return p1
.end method

.method private final zzet()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhd;
        }
    .end annotation

    const/4 v0, 0x0

    .line 553
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzagj:Z

    .line 554
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzagc:Lcom/google/android/gms/internal/ads/zzpl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzpl;->start()V

    .line 555
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzagh:[Lcom/google/android/gms/internal/ads/zzhx;

    array-length v2, v1

    :goto_b
    if-ge v0, v2, :cond_15

    aget-object v3, v1, v0

    .line 556
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzhx;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_15
    return-void
.end method

.method private final zzeu()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhd;
        }
    .end annotation

    .line 559
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzagc:Lcom/google/android/gms/internal/ads/zzpl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpl;->stop()V

    .line 560
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzagh:[Lcom/google/android/gms/internal/ads/zzhx;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_13

    aget-object v3, v0, v2

    .line 561
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzhl;->zza(Lcom/google/android/gms/internal/ads/zzhx;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_13
    return-void
.end method

.method private final zzev()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhd;
        }
    .end annotation

    .line 564
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzags:Lcom/google/android/gms/internal/ads/zzhk;

    if-nez v0, :cond_5

    return-void

    .line 566
    :cond_5
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzhk;->zzafm:Lcom/google/android/gms/internal/ads/zzmx;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzmx;->zzhq()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_18

    .line 568
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzhl;->zzdq(J)V

    goto :goto_44

    .line 569
    :cond_18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzagf:Lcom/google/android/gms/internal/ads/zzhx;

    if-eqz v0, :cond_32

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhx;->zzfe()Z

    move-result v0

    if-nez v0, :cond_32

    .line 570
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzagg:Lcom/google/android/gms/internal/ads/zzpd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzpd;->zzfz()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzagp:J

    .line 571
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzagc:Lcom/google/android/gms/internal/ads/zzpl;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzagp:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzpl;->zzel(J)V

    goto :goto_3a

    .line 572
    :cond_32
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzagc:Lcom/google/android/gms/internal/ads/zzpl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpl;->zzfz()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzagp:J

    .line 573
    :goto_3a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzags:Lcom/google/android/gms/internal/ads/zzhk;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzagp:J

    .line 574
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhk;->zzep()J

    move-result-wide v3

    sub-long/2addr v1, v3

    move-wide v0, v1

    .line 576
    :goto_44
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzafi:Lcom/google/android/gms/internal/ads/zzhn;

    iput-wide v0, v2, Lcom/google/android/gms/internal/ads/zzhn;->zzagv:J

    .line 577
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzagm:J

    .line 578
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzagh:[Lcom/google/android/gms/internal/ads/zzhx;

    array-length v0, v0

    const-wide/high16 v1, -0x8000000000000000L

    if-nez v0, :cond_5b

    move-wide v3, v1

    goto :goto_63

    .line 579
    :cond_5b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzags:Lcom/google/android/gms/internal/ads/zzhk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzhk;->zzafm:Lcom/google/android/gms/internal/ads/zzmx;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzmx;->zzhr()J

    move-result-wide v3

    .line 580
    :goto_63
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzafi:Lcom/google/android/gms/internal/ads/zzhn;

    cmp-long v5, v3, v1

    if-nez v5, :cond_78

    .line 581
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzafd:Lcom/google/android/gms/internal/ads/zzhy;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzags:Lcom/google/android/gms/internal/ads/zzhk;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzhk;->zzafr:I

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzaew:Lcom/google/android/gms/internal/ads/zzia;

    const/4 v4, 0x0

    .line 582
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzhy;->zza(ILcom/google/android/gms/internal/ads/zzia;Z)Lcom/google/android/gms/internal/ads/zzia;

    move-result-object v1

    .line 583
    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/zzia;->zzaih:J

    .line 585
    :cond_78
    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/zzhn;->zzagw:J

    return-void
.end method

.method private final zzew()V
    .registers 3

    const/4 v0, 0x1

    .line 640
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzhl;->zzi(Z)V

    .line 641
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzafz:Lcom/google/android/gms/internal/ads/zzhs;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzhs;->onStopped()V

    .line 642
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzhl;->setState(I)V

    return-void
.end method

.method private final zzex()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 675
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzagq:Lcom/google/android/gms/internal/ads/zzhk;

    if-eqz v0, :cond_2b

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzhk;->zzafu:Z

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzagr:Lcom/google/android/gms/internal/ads/zzhk;

    if-eqz v0, :cond_12

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzhk;->zzafw:Lcom/google/android/gms/internal/ads/zzhk;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzagq:Lcom/google/android/gms/internal/ads/zzhk;

    if-ne v0, v1, :cond_2b

    .line 676
    :cond_12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzagh:[Lcom/google/android/gms/internal/ads/zzhx;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_16
    if-ge v2, v1, :cond_24

    aget-object v3, v0, v2

    .line 677
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzhx;->zzec()Z

    move-result v3

    if-nez v3, :cond_21

    return-void

    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 680
    :cond_24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzagq:Lcom/google/android/gms/internal/ads/zzhk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzhk;->zzafm:Lcom/google/android/gms/internal/ads/zzmx;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzmx;->zzhn()V

    :cond_2b
    return-void
.end method

.method private final zzey()V
    .registers 8

    .line 748
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzagq:Lcom/google/android/gms/internal/ads/zzhk;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzhk;->zzafu:Z

    if-nez v0, :cond_9

    const-wide/16 v0, 0x0

    goto :goto_11

    .line 749
    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzagq:Lcom/google/android/gms/internal/ads/zzhk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzhk;->zzafm:Lcom/google/android/gms/internal/ads/zzmx;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzmx;->zzhp()J

    move-result-wide v0

    :goto_11
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_1c

    const/4 v0, 0x0

    .line 751
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzhl;->zzh(Z)V

    return-void

    .line 752
    :cond_1c
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzagq:Lcom/google/android/gms/internal/ads/zzhk;

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzagp:J

    .line 753
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhk;->zzep()J

    move-result-wide v5

    sub-long/2addr v3, v5

    sub-long/2addr v0, v3

    .line 756
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzafz:Lcom/google/android/gms/internal/ads/zzhs;

    invoke-interface {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzhs;->zzdt(J)Z

    move-result v0

    .line 757
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzhl;->zzh(Z)V

    if-eqz v0, :cond_38

    .line 759
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzagq:Lcom/google/android/gms/internal/ads/zzhk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzhk;->zzafm:Lcom/google/android/gms/internal/ads/zzmx;

    invoke-interface {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzmx;->zzef(J)Z

    :cond_38
    return-void
.end method

.method private final zzh(Z)V
    .registers 5

    .line 549
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzafc:Z

    if-eq v0, p1, :cond_11

    .line 550
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzafc:Z

    .line 551
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzaes:Landroid/os/Handler;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_11
    return-void
.end method

.method private final zzi(Z)V
    .registers 10

    .line 644
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhl;->handler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    .line 645
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzagj:Z

    .line 646
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzagc:Lcom/google/android/gms/internal/ads/zzpl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzpl;->stop()V

    const/4 v1, 0x0

    .line 647
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzagg:Lcom/google/android/gms/internal/ads/zzpd;

    .line 648
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzagf:Lcom/google/android/gms/internal/ads/zzhx;

    const-wide/32 v2, 0x3938700

    .line 649
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzagp:J

    .line 650
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzagh:[Lcom/google/android/gms/internal/ads/zzhx;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1c
    if-ge v4, v3, :cond_34

    aget-object v5, v2, v4

    .line 651
    :try_start_20
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzhl;->zza(Lcom/google/android/gms/internal/ads/zzhx;)V

    .line 652
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzhx;->disable()V
    :try_end_26
    .catch Lcom/google/android/gms/internal/ads/zzhd; {:try_start_20 .. :try_end_26} :catch_29
    .catch Ljava/lang/RuntimeException; {:try_start_20 .. :try_end_26} :catch_27

    goto :goto_31

    :catch_27
    move-exception v5

    goto :goto_2a

    :catch_29
    move-exception v5

    :goto_2a
    const-string v6, "ExoPlayerImplInternal"

    const-string v7, "Stop failed."

    .line 655
    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_31
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 657
    :cond_34
    new-array v2, v0, [Lcom/google/android/gms/internal/ads/zzhx;

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzagh:[Lcom/google/android/gms/internal/ads/zzhx;

    .line 658
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzags:Lcom/google/android/gms/internal/ads/zzhk;

    if-eqz v2, :cond_3d

    goto :goto_3f

    .line 659
    :cond_3d
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzagq:Lcom/google/android/gms/internal/ads/zzhk;

    .line 660
    :goto_3f
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzhl;->zza(Lcom/google/android/gms/internal/ads/zzhk;)V

    .line 661
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzagq:Lcom/google/android/gms/internal/ads/zzhk;

    .line 662
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzagr:Lcom/google/android/gms/internal/ads/zzhk;

    .line 663
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzags:Lcom/google/android/gms/internal/ads/zzhk;

    .line 664
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzhl;->zzh(Z)V

    if-eqz p1, :cond_58

    .line 666
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzaga:Lcom/google/android/gms/internal/ads/zzmz;

    if-eqz p1, :cond_56

    .line 667
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzmz;->zzia()V

    .line 668
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzaga:Lcom/google/android/gms/internal/ads/zzmz;

    .line 669
    :cond_56
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzafd:Lcom/google/android/gms/internal/ads/zzhy;

    :cond_58
    return-void
.end method

.method private final zzu(I)Z
    .registers 7

    .line 700
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzafd:Lcom/google/android/gms/internal/ads/zzhy;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzaew:Lcom/google/android/gms/internal/ads/zzia;

    const/4 v2, 0x0

    .line 701
    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzhy;->zza(ILcom/google/android/gms/internal/ads/zzia;Z)Lcom/google/android/gms/internal/ads/zzia;

    .line 702
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzafd:Lcom/google/android/gms/internal/ads/zzhy;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzaev:Lcom/google/android/gms/internal/ads/zzid;

    .line 703
    invoke-virtual {v0, v2, v1, v2}, Lcom/google/android/gms/internal/ads/zzhy;->zza(ILcom/google/android/gms/internal/ads/zzid;Z)Lcom/google/android/gms/internal/ads/zzid;

    move-result-object v0

    .line 704
    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzid;->zzait:Z

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzafd:Lcom/google/android/gms/internal/ads/zzhy;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzaew:Lcom/google/android/gms/internal/ads/zzia;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzaev:Lcom/google/android/gms/internal/ads/zzid;

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzhl;->repeatMode:I

    .line 706
    invoke-virtual {v0, p1, v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzhy;->zza(ILcom/google/android/gms/internal/ads/zzia;Lcom/google/android/gms/internal/ads/zzid;I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_25

    const/4 p1, 0x1

    return p1

    :cond_25
    return v2
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .registers 36

    move-object/from16 v8, p0

    move-object/from16 v1, p1

    const/4 v10, 0x1

    .line 71
    :try_start_5
    iget v2, v1, Landroid/os/Message;->what:I
    :try_end_7
    .catch Lcom/google/android/gms/internal/ads/zzhd; {:try_start_5 .. :try_end_7} :catch_8f1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_7} :catch_8d5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_7} :catch_8b9

    const/4 v11, 0x7

    const-wide/16 v3, 0x0

    const/4 v14, 0x3

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v15, 0x4

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x2

    const/4 v9, 0x0

    packed-switch v2, :pswitch_data_90a

    return v9

    .line 95
    :pswitch_19
    :try_start_19
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 96
    iput v1, v8, Lcom/google/android/gms/internal/ads/zzhl;->repeatMode:I

    .line 97
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzags:Lcom/google/android/gms/internal/ads/zzhk;

    if-eqz v2, :cond_24

    .line 98
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzags:Lcom/google/android/gms/internal/ads/zzhk;

    goto :goto_26

    :cond_24
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzagq:Lcom/google/android/gms/internal/ads/zzhk;

    :goto_26
    if-eqz v2, :cond_9e

    .line 100
    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzagr:Lcom/google/android/gms/internal/ads/zzhk;

    if-ne v2, v3, :cond_2e

    const/4 v3, 0x1

    goto :goto_2f

    :cond_2e
    const/4 v3, 0x0

    .line 101
    :goto_2f
    iget-object v4, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzagq:Lcom/google/android/gms/internal/ads/zzhk;

    if-ne v2, v4, :cond_37

    move v4, v3

    move-object v3, v2

    const/4 v2, 0x1

    goto :goto_3a

    :cond_37
    move v4, v3

    move-object v3, v2

    const/4 v2, 0x0

    .line 102
    :goto_3a
    iget-object v11, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzafd:Lcom/google/android/gms/internal/ads/zzhy;

    iget v12, v3, Lcom/google/android/gms/internal/ads/zzhk;->zzafr:I

    iget-object v13, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzaew:Lcom/google/android/gms/internal/ads/zzia;

    iget-object v14, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzaev:Lcom/google/android/gms/internal/ads/zzid;

    invoke-virtual {v11, v12, v13, v14, v1}, Lcom/google/android/gms/internal/ads/zzhy;->zza(ILcom/google/android/gms/internal/ads/zzia;Lcom/google/android/gms/internal/ads/zzid;I)I

    move-result v11

    .line 103
    iget-object v12, v3, Lcom/google/android/gms/internal/ads/zzhk;->zzafw:Lcom/google/android/gms/internal/ads/zzhk;

    if-eqz v12, :cond_65

    if-eq v11, v5, :cond_65

    iget-object v12, v3, Lcom/google/android/gms/internal/ads/zzhk;->zzafw:Lcom/google/android/gms/internal/ads/zzhk;

    iget v12, v12, Lcom/google/android/gms/internal/ads/zzhk;->zzafr:I

    if-ne v12, v11, :cond_65

    .line 104
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzhk;->zzafw:Lcom/google/android/gms/internal/ads/zzhk;

    .line 105
    iget-object v11, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzagr:Lcom/google/android/gms/internal/ads/zzhk;

    if-ne v3, v11, :cond_5a

    const/4 v11, 0x1

    goto :goto_5b

    :cond_5a
    const/4 v11, 0x0

    :goto_5b
    or-int/2addr v4, v11

    .line 106
    iget-object v11, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzagq:Lcom/google/android/gms/internal/ads/zzhk;

    if-ne v3, v11, :cond_62

    const/4 v11, 0x1

    goto :goto_63

    :cond_62
    const/4 v11, 0x0

    :goto_63
    or-int/2addr v2, v11

    goto :goto_3a

    .line 108
    :cond_65
    iget-object v5, v3, Lcom/google/android/gms/internal/ads/zzhk;->zzafw:Lcom/google/android/gms/internal/ads/zzhk;

    if-eqz v5, :cond_70

    .line 109
    iget-object v5, v3, Lcom/google/android/gms/internal/ads/zzhk;->zzafw:Lcom/google/android/gms/internal/ads/zzhk;

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzhl;->zza(Lcom/google/android/gms/internal/ads/zzhk;)V

    .line 110
    iput-object v6, v3, Lcom/google/android/gms/internal/ads/zzhk;->zzafw:Lcom/google/android/gms/internal/ads/zzhk;

    .line 111
    :cond_70
    iget v5, v3, Lcom/google/android/gms/internal/ads/zzhk;->zzafr:I

    invoke-direct {v8, v5}, Lcom/google/android/gms/internal/ads/zzhl;->zzu(I)Z

    move-result v5

    iput-boolean v5, v3, Lcom/google/android/gms/internal/ads/zzhk;->zzaft:Z

    if-nez v2, :cond_7c

    .line 113
    iput-object v3, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzagq:Lcom/google/android/gms/internal/ads/zzhk;

    :cond_7c
    if-nez v4, :cond_95

    .line 114
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzags:Lcom/google/android/gms/internal/ads/zzhk;

    if-eqz v2, :cond_95

    .line 115
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzags:Lcom/google/android/gms/internal/ads/zzhk;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzhk;->zzafr:I

    .line 116
    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzafi:Lcom/google/android/gms/internal/ads/zzhn;

    iget-wide v3, v3, Lcom/google/android/gms/internal/ads/zzhn;->zzagv:J

    invoke-direct {v8, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzhl;->zza(IJ)J

    move-result-wide v3

    .line 117
    new-instance v5, Lcom/google/android/gms/internal/ads/zzhn;

    invoke-direct {v5, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzhn;-><init>(IJ)V

    iput-object v5, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzafi:Lcom/google/android/gms/internal/ads/zzhn;

    .line 118
    :cond_95
    iget v2, v8, Lcom/google/android/gms/internal/ads/zzhl;->state:I

    if-ne v2, v15, :cond_9e

    if-eqz v1, :cond_9e

    .line 119
    invoke-direct {v8, v7}, Lcom/google/android/gms/internal/ads/zzhl;->setState(I)V

    :cond_9e
    return v10

    .line 512
    :pswitch_9f
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Lcom/google/android/gms/internal/ads/zzhh;
    :try_end_a3
    .catch Lcom/google/android/gms/internal/ads/zzhd; {:try_start_19 .. :try_end_a3} :catch_8b4
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_a3} :catch_8af
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_a3} :catch_8b9

    .line 513
    :try_start_a3
    array-length v2, v1

    :goto_a4
    if-ge v9, v2, :cond_b4

    aget-object v3, v1, v9

    .line 514
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzhh;->zzael:Lcom/google/android/gms/internal/ads/zzhe;

    iget v5, v3, Lcom/google/android/gms/internal/ads/zzhh;->zzaem:I

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzhh;->zzaen:Ljava/lang/Object;

    invoke-interface {v4, v5, v3}, Lcom/google/android/gms/internal/ads/zzhe;->zza(ILjava/lang/Object;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_a4

    .line 516
    :cond_b4
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzaga:Lcom/google/android/gms/internal/ads/zzmz;

    if-eqz v1, :cond_bd

    .line 517
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzhl;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_bd
    .catchall {:try_start_a3 .. :try_end_bd} :catchall_cc

    .line 518
    :cond_bd
    :try_start_bd
    monitor-enter p0
    :try_end_be
    .catch Lcom/google/android/gms/internal/ads/zzhd; {:try_start_bd .. :try_end_be} :catch_8b4
    .catch Ljava/io/IOException; {:try_start_bd .. :try_end_be} :catch_8af
    .catch Ljava/lang/RuntimeException; {:try_start_bd .. :try_end_be} :catch_8b9

    .line 519
    :try_start_be
    iget v1, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzagl:I

    add-int/2addr v1, v10

    iput v1, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzagl:I

    .line 520
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notifyAll()V

    .line 521
    monitor-exit p0

    return v10

    :catchall_c8
    move-exception v0

    move-object v1, v0

    monitor-exit p0
    :try_end_cb
    .catchall {:try_start_be .. :try_end_cb} :catchall_c8

    :try_start_cb
    throw v1

    :catchall_cc
    move-exception v0

    move-object v1, v0

    .line 522
    monitor-enter p0
    :try_end_cf
    .catch Lcom/google/android/gms/internal/ads/zzhd; {:try_start_cb .. :try_end_cf} :catch_8b4
    .catch Ljava/io/IOException; {:try_start_cb .. :try_end_cf} :catch_8af
    .catch Ljava/lang/RuntimeException; {:try_start_cb .. :try_end_cf} :catch_8b9

    .line 523
    :try_start_cf
    iget v2, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzagl:I

    add-int/2addr v2, v10

    iput v2, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzagl:I

    .line 524
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notifyAll()V

    .line 525
    monitor-exit p0
    :try_end_d8
    .catchall {:try_start_cf .. :try_end_d8} :catchall_d9

    .line 526
    :try_start_d8
    throw v1
    :try_end_d9
    .catch Lcom/google/android/gms/internal/ads/zzhd; {:try_start_d8 .. :try_end_d9} :catch_8b4
    .catch Ljava/io/IOException; {:try_start_d8 .. :try_end_d9} :catch_8af
    .catch Ljava/lang/RuntimeException; {:try_start_d8 .. :try_end_d9} :catch_8b9

    :catchall_d9
    move-exception v0

    move-object v1, v0

    .line 525
    :try_start_db
    monitor-exit p0
    :try_end_dc
    .catchall {:try_start_db .. :try_end_dc} :catchall_d9

    :try_start_dc
    throw v1

    .line 452
    :pswitch_dd
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzags:Lcom/google/android/gms/internal/ads/zzhk;

    if-eqz v1, :cond_1d1

    .line 453
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzags:Lcom/google/android/gms/internal/ads/zzhk;

    const/4 v2, 0x1

    :goto_e4
    if-eqz v1, :cond_1d1

    .line 455
    iget-boolean v3, v1, Lcom/google/android/gms/internal/ads/zzhk;->zzafu:Z

    if-nez v3, :cond_ec

    goto/16 :goto_1d1

    .line 457
    :cond_ec
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhk;->zzer()Z

    move-result v3

    if-nez v3, :cond_fa

    .line 458
    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzagr:Lcom/google/android/gms/internal/ads/zzhk;

    if-ne v1, v3, :cond_f7

    const/4 v2, 0x0

    .line 460
    :cond_f7
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzhk;->zzafw:Lcom/google/android/gms/internal/ads/zzhk;

    goto :goto_e4

    :cond_fa
    if-eqz v2, :cond_198

    .line 462
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzagr:Lcom/google/android/gms/internal/ads/zzhk;

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzags:Lcom/google/android/gms/internal/ads/zzhk;

    if-eq v2, v3, :cond_104

    const/4 v2, 0x1

    goto :goto_105

    :cond_104
    const/4 v2, 0x0

    .line 463
    :goto_105
    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzags:Lcom/google/android/gms/internal/ads/zzhk;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzhk;->zzafw:Lcom/google/android/gms/internal/ads/zzhk;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzhl;->zza(Lcom/google/android/gms/internal/ads/zzhk;)V

    .line 464
    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzags:Lcom/google/android/gms/internal/ads/zzhk;

    iput-object v6, v3, Lcom/google/android/gms/internal/ads/zzhk;->zzafw:Lcom/google/android/gms/internal/ads/zzhk;

    .line 465
    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzags:Lcom/google/android/gms/internal/ads/zzhk;

    iput-object v3, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzagq:Lcom/google/android/gms/internal/ads/zzhk;

    .line 466
    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzags:Lcom/google/android/gms/internal/ads/zzhk;

    iput-object v3, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzagr:Lcom/google/android/gms/internal/ads/zzhk;

    .line 467
    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzaep:[Lcom/google/android/gms/internal/ads/zzhx;

    array-length v3, v3

    new-array v3, v3, [Z

    .line 468
    iget-object v4, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzags:Lcom/google/android/gms/internal/ads/zzhk;

    iget-object v5, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzafi:Lcom/google/android/gms/internal/ads/zzhn;

    iget-wide v11, v5, Lcom/google/android/gms/internal/ads/zzhn;->zzagv:J

    invoke-virtual {v4, v11, v12, v2, v3}, Lcom/google/android/gms/internal/ads/zzhk;->zza(JZ[Z)J

    move-result-wide v4

    .line 469
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzafi:Lcom/google/android/gms/internal/ads/zzhn;

    iget-wide v11, v2, Lcom/google/android/gms/internal/ads/zzhn;->zzagv:J

    cmp-long v2, v4, v11

    if-eqz v2, :cond_136

    .line 470
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzafi:Lcom/google/android/gms/internal/ads/zzhn;

    iput-wide v4, v2, Lcom/google/android/gms/internal/ads/zzhn;->zzagv:J

    .line 471
    invoke-direct {v8, v4, v5}, Lcom/google/android/gms/internal/ads/zzhl;->zzdq(J)V

    .line 473
    :cond_136
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzaep:[Lcom/google/android/gms/internal/ads/zzhx;

    array-length v2, v2

    new-array v2, v2, [Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 474
    :goto_13d
    iget-object v11, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzaep:[Lcom/google/android/gms/internal/ads/zzhx;

    array-length v11, v11

    if-ge v4, v11, :cond_189

    .line 475
    iget-object v11, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzaep:[Lcom/google/android/gms/internal/ads/zzhx;

    aget-object v11, v11, v4

    .line 476
    invoke-interface {v11}, Lcom/google/android/gms/internal/ads/zzhx;->getState()I

    move-result v12

    if-eqz v12, :cond_14e

    const/4 v12, 0x1

    goto :goto_14f

    :cond_14e
    const/4 v12, 0x0

    :goto_14f
    aput-boolean v12, v2, v4

    .line 477
    iget-object v12, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzags:Lcom/google/android/gms/internal/ads/zzhk;

    iget-object v12, v12, Lcom/google/android/gms/internal/ads/zzhk;->zzafo:[Lcom/google/android/gms/internal/ads/zznm;

    aget-object v12, v12, v4

    if-eqz v12, :cond_15b

    add-int/lit8 v5, v5, 0x1

    .line 480
    :cond_15b
    aget-boolean v13, v2, v4

    if-eqz v13, :cond_186

    .line 481
    invoke-interface {v11}, Lcom/google/android/gms/internal/ads/zzhx;->zzeb()Lcom/google/android/gms/internal/ads/zznm;

    move-result-object v13

    if-eq v12, v13, :cond_17d

    .line 482
    iget-object v13, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzagf:Lcom/google/android/gms/internal/ads/zzhx;

    if-ne v11, v13, :cond_176

    if-nez v12, :cond_172

    .line 484
    iget-object v12, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzagc:Lcom/google/android/gms/internal/ads/zzpl;

    iget-object v13, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzagg:Lcom/google/android/gms/internal/ads/zzpd;

    invoke-virtual {v12, v13}, Lcom/google/android/gms/internal/ads/zzpl;->zza(Lcom/google/android/gms/internal/ads/zzpd;)V

    .line 485
    :cond_172
    iput-object v6, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzagg:Lcom/google/android/gms/internal/ads/zzpd;

    .line 486
    iput-object v6, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzagf:Lcom/google/android/gms/internal/ads/zzhx;

    .line 487
    :cond_176
    invoke-static {v11}, Lcom/google/android/gms/internal/ads/zzhl;->zza(Lcom/google/android/gms/internal/ads/zzhx;)V

    .line 488
    invoke-interface {v11}, Lcom/google/android/gms/internal/ads/zzhx;->disable()V

    goto :goto_186

    .line 489
    :cond_17d
    aget-boolean v12, v3, v4

    if-eqz v12, :cond_186

    .line 490
    iget-wide v12, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzagp:J

    invoke-interface {v11, v12, v13}, Lcom/google/android/gms/internal/ads/zzhx;->zzdo(J)V

    :cond_186
    :goto_186
    add-int/lit8 v4, v4, 0x1

    goto :goto_13d

    .line 492
    :cond_189
    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzaes:Landroid/os/Handler;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzhk;->zzafx:Lcom/google/android/gms/internal/ads/zzoi;

    invoke-virtual {v3, v14, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 493
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 494
    invoke-direct {v8, v2, v5}, Lcom/google/android/gms/internal/ads/zzhl;->zza([ZI)V

    goto :goto_1c6

    .line 496
    :cond_198
    iput-object v1, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzagq:Lcom/google/android/gms/internal/ads/zzhk;

    .line 497
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzagq:Lcom/google/android/gms/internal/ads/zzhk;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzhk;->zzafw:Lcom/google/android/gms/internal/ads/zzhk;

    :goto_19e
    if-eqz v1, :cond_1a6

    .line 499
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhk;->release()V

    .line 500
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzhk;->zzafw:Lcom/google/android/gms/internal/ads/zzhk;

    goto :goto_19e

    .line 501
    :cond_1a6
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzagq:Lcom/google/android/gms/internal/ads/zzhk;

    iput-object v6, v1, Lcom/google/android/gms/internal/ads/zzhk;->zzafw:Lcom/google/android/gms/internal/ads/zzhk;

    .line 502
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzagq:Lcom/google/android/gms/internal/ads/zzhk;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzhk;->zzafu:Z

    if-eqz v1, :cond_1c6

    .line 503
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzagq:Lcom/google/android/gms/internal/ads/zzhk;

    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zzhk;->zzafs:J

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzagq:Lcom/google/android/gms/internal/ads/zzhk;

    iget-wide v4, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzagp:J

    .line 505
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzhk;->zzep()J

    move-result-wide v11

    sub-long/2addr v4, v11

    .line 506
    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 507
    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzagq:Lcom/google/android/gms/internal/ads/zzhk;

    invoke-virtual {v3, v1, v2, v9}, Lcom/google/android/gms/internal/ads/zzhk;->zzb(JZ)J

    .line 508
    :cond_1c6
    :goto_1c6
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhl;->zzey()V

    .line 509
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhl;->zzev()V

    .line 510
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzhl;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1d1
    :goto_1d1
    return v10

    .line 446
    :pswitch_1d2
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzmx;

    .line 447
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzagq:Lcom/google/android/gms/internal/ads/zzhk;

    if-eqz v2, :cond_1e4

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzagq:Lcom/google/android/gms/internal/ads/zzhk;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzhk;->zzafm:Lcom/google/android/gms/internal/ads/zzmx;

    if-eq v2, v1, :cond_1e1

    goto :goto_1e4

    .line 449
    :cond_1e1
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhl;->zzey()V

    :cond_1e4
    :goto_1e4
    return v10

    .line 359
    :pswitch_1e5
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzmx;

    .line 360
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzagq:Lcom/google/android/gms/internal/ads/zzhk;

    if-eqz v2, :cond_21a

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzagq:Lcom/google/android/gms/internal/ads/zzhk;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzhk;->zzafm:Lcom/google/android/gms/internal/ads/zzmx;

    if-eq v2, v1, :cond_1f4

    goto :goto_21a

    .line 362
    :cond_1f4
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzagq:Lcom/google/android/gms/internal/ads/zzhk;

    .line 363
    iput-boolean v10, v1, Lcom/google/android/gms/internal/ads/zzhk;->zzafu:Z

    .line 364
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhk;->zzer()Z

    .line 365
    iget-wide v2, v1, Lcom/google/android/gms/internal/ads/zzhk;->zzafs:J

    invoke-virtual {v1, v2, v3, v9}, Lcom/google/android/gms/internal/ads/zzhk;->zzb(JZ)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/google/android/gms/internal/ads/zzhk;->zzafs:J

    .line 366
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzags:Lcom/google/android/gms/internal/ads/zzhk;

    if-nez v1, :cond_217

    .line 367
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzagq:Lcom/google/android/gms/internal/ads/zzhk;

    iput-object v1, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzagr:Lcom/google/android/gms/internal/ads/zzhk;

    .line 368
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzagr:Lcom/google/android/gms/internal/ads/zzhk;

    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zzhk;->zzafs:J

    invoke-direct {v8, v1, v2}, Lcom/google/android/gms/internal/ads/zzhl;->zzdq(J)V

    .line 369
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzagr:Lcom/google/android/gms/internal/ads/zzhk;

    invoke-direct {v8, v1}, Lcom/google/android/gms/internal/ads/zzhl;->zzb(Lcom/google/android/gms/internal/ads/zzhk;)V

    .line 370
    :cond_217
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhl;->zzey()V

    :cond_21a
    :goto_21a
    return v10

    .line 372
    :pswitch_21b
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/util/Pair;

    .line 373
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzafd:Lcom/google/android/gms/internal/ads/zzhy;

    .line 374
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/ads/zzhy;

    iput-object v3, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzafd:Lcom/google/android/gms/internal/ads/zzhy;

    .line 375
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez v2, :cond_28a

    .line 378
    iget v3, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzagn:I

    if-lez v3, :cond_25a

    .line 379
    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzago:Lcom/google/android/gms/internal/ads/zzhm;

    invoke-direct {v8, v3}, Lcom/google/android/gms/internal/ads/zzhl;->zza(Lcom/google/android/gms/internal/ads/zzhm;)Landroid/util/Pair;

    move-result-object v3

    .line 380
    iget v4, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzagn:I

    .line 381
    iput v9, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzagn:I

    .line 382
    iput-object v6, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzago:Lcom/google/android/gms/internal/ads/zzhm;

    if-nez v3, :cond_242

    .line 384
    invoke-direct {v8, v1, v4}, Lcom/google/android/gms/internal/ads/zzhl;->zza(Ljava/lang/Object;I)V

    goto/16 :goto_378

    .line 386
    :cond_242
    new-instance v7, Lcom/google/android/gms/internal/ads/zzhn;

    iget-object v11, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-direct {v7, v11, v14, v15}, Lcom/google/android/gms/internal/ads/zzhn;-><init>(IJ)V

    iput-object v7, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzafi:Lcom/google/android/gms/internal/ads/zzhn;

    goto :goto_28b

    .line 387
    :cond_25a
    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzafi:Lcom/google/android/gms/internal/ads/zzhn;

    iget-wide v3, v3, Lcom/google/android/gms/internal/ads/zzhn;->zzafs:J

    cmp-long v7, v3, v12

    if-nez v7, :cond_28a

    .line 388
    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzafd:Lcom/google/android/gms/internal/ads/zzhy;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzhy;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_26f

    .line 389
    invoke-direct {v8, v1, v9}, Lcom/google/android/gms/internal/ads/zzhl;->zza(Ljava/lang/Object;I)V

    goto/16 :goto_378

    .line 391
    :cond_26f
    invoke-direct {v8, v9, v12, v13}, Lcom/google/android/gms/internal/ads/zzhl;->zzb(IJ)Landroid/util/Pair;

    move-result-object v3

    .line 392
    new-instance v4, Lcom/google/android/gms/internal/ads/zzhn;

    iget-object v7, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-direct {v4, v7, v14, v15}, Lcom/google/android/gms/internal/ads/zzhn;-><init>(IJ)V

    iput-object v4, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzafi:Lcom/google/android/gms/internal/ads/zzhn;

    :cond_28a
    const/4 v4, 0x0

    .line 393
    :goto_28b
    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzags:Lcom/google/android/gms/internal/ads/zzhk;

    if-eqz v3, :cond_292

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzags:Lcom/google/android/gms/internal/ads/zzhk;

    goto :goto_294

    .line 394
    :cond_292
    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzagq:Lcom/google/android/gms/internal/ads/zzhk;

    :goto_294
    if-eqz v3, :cond_375

    .line 396
    iget-object v7, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzafd:Lcom/google/android/gms/internal/ads/zzhy;

    iget-object v11, v3, Lcom/google/android/gms/internal/ads/zzhk;->zzafn:Ljava/lang/Object;

    invoke-virtual {v7, v11}, Lcom/google/android/gms/internal/ads/zzhy;->zzc(Ljava/lang/Object;)I

    move-result v7

    if-ne v7, v5, :cond_2f8

    .line 398
    iget v6, v3, Lcom/google/android/gms/internal/ads/zzhk;->zzafr:I

    iget-object v7, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzafd:Lcom/google/android/gms/internal/ads/zzhy;

    invoke-direct {v8, v6, v2, v7}, Lcom/google/android/gms/internal/ads/zzhl;->zza(ILcom/google/android/gms/internal/ads/zzhy;Lcom/google/android/gms/internal/ads/zzhy;)I

    move-result v2

    if-ne v2, v5, :cond_2af

    .line 400
    invoke-direct {v8, v1, v4}, Lcom/google/android/gms/internal/ads/zzhl;->zza(Ljava/lang/Object;I)V

    goto/16 :goto_378

    .line 402
    :cond_2af
    iget-object v6, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzafd:Lcom/google/android/gms/internal/ads/zzhy;

    iget-object v7, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzaew:Lcom/google/android/gms/internal/ads/zzia;

    .line 404
    invoke-virtual {v6, v2, v7, v9}, Lcom/google/android/gms/internal/ads/zzhy;->zza(ILcom/google/android/gms/internal/ads/zzia;Z)Lcom/google/android/gms/internal/ads/zzia;

    .line 406
    invoke-direct {v8, v9, v12, v13}, Lcom/google/android/gms/internal/ads/zzhl;->zzb(IJ)Landroid/util/Pair;

    move-result-object v2

    .line 407
    iget-object v6, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 408
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 409
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzafd:Lcom/google/android/gms/internal/ads/zzhy;

    iget-object v7, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzaew:Lcom/google/android/gms/internal/ads/zzia;

    invoke-virtual {v2, v6, v7, v10}, Lcom/google/android/gms/internal/ads/zzhy;->zza(ILcom/google/android/gms/internal/ads/zzia;Z)Lcom/google/android/gms/internal/ads/zzia;

    .line 410
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzaew:Lcom/google/android/gms/internal/ads/zzia;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzia;->zzafn:Ljava/lang/Object;

    .line 411
    iput v5, v3, Lcom/google/android/gms/internal/ads/zzhk;->zzafr:I

    .line 412
    :goto_2d7
    iget-object v7, v3, Lcom/google/android/gms/internal/ads/zzhk;->zzafw:Lcom/google/android/gms/internal/ads/zzhk;

    if-eqz v7, :cond_2eb

    .line 413
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzhk;->zzafw:Lcom/google/android/gms/internal/ads/zzhk;

    .line 414
    iget-object v7, v3, Lcom/google/android/gms/internal/ads/zzhk;->zzafn:Ljava/lang/Object;

    invoke-virtual {v7, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2e7

    move v7, v6

    goto :goto_2e8

    :cond_2e7
    const/4 v7, -0x1

    .line 415
    :goto_2e8
    iput v7, v3, Lcom/google/android/gms/internal/ads/zzhk;->zzafr:I

    goto :goto_2d7

    .line 416
    :cond_2eb
    invoke-direct {v8, v6, v11, v12}, Lcom/google/android/gms/internal/ads/zzhl;->zza(IJ)J

    move-result-wide v2

    .line 417
    new-instance v5, Lcom/google/android/gms/internal/ads/zzhn;

    invoke-direct {v5, v6, v2, v3}, Lcom/google/android/gms/internal/ads/zzhn;-><init>(IJ)V

    iput-object v5, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzafi:Lcom/google/android/gms/internal/ads/zzhn;

    goto/16 :goto_375

    .line 419
    :cond_2f8
    invoke-direct {v8, v7}, Lcom/google/android/gms/internal/ads/zzhl;->zzu(I)Z

    move-result v2

    invoke-virtual {v3, v7, v2}, Lcom/google/android/gms/internal/ads/zzhk;->zzc(IZ)V

    .line 420
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzagr:Lcom/google/android/gms/internal/ads/zzhk;

    if-ne v3, v2, :cond_305

    const/4 v2, 0x1

    goto :goto_306

    :cond_305
    const/4 v2, 0x0

    .line 421
    :goto_306
    iget-object v11, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzafi:Lcom/google/android/gms/internal/ads/zzhn;

    iget v11, v11, Lcom/google/android/gms/internal/ads/zzhn;->zzafr:I

    if-eq v7, v11, :cond_31f

    .line 422
    iget-object v11, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzafi:Lcom/google/android/gms/internal/ads/zzhn;

    .line 423
    new-instance v12, Lcom/google/android/gms/internal/ads/zzhn;

    iget-wide v13, v11, Lcom/google/android/gms/internal/ads/zzhn;->zzafs:J

    invoke-direct {v12, v7, v13, v14}, Lcom/google/android/gms/internal/ads/zzhn;-><init>(IJ)V

    .line 424
    iget-wide v13, v11, Lcom/google/android/gms/internal/ads/zzhn;->zzagv:J

    iput-wide v13, v12, Lcom/google/android/gms/internal/ads/zzhn;->zzagv:J

    .line 425
    iget-wide v13, v11, Lcom/google/android/gms/internal/ads/zzhn;->zzagw:J

    iput-wide v13, v12, Lcom/google/android/gms/internal/ads/zzhn;->zzagw:J

    .line 427
    iput-object v12, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzafi:Lcom/google/android/gms/internal/ads/zzhn;

    .line 428
    :cond_31f
    :goto_31f
    iget-object v11, v3, Lcom/google/android/gms/internal/ads/zzhk;->zzafw:Lcom/google/android/gms/internal/ads/zzhk;

    if-eqz v11, :cond_375

    .line 430
    iget-object v11, v3, Lcom/google/android/gms/internal/ads/zzhk;->zzafw:Lcom/google/android/gms/internal/ads/zzhk;

    .line 431
    iget-object v12, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzafd:Lcom/google/android/gms/internal/ads/zzhy;

    iget-object v13, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzaew:Lcom/google/android/gms/internal/ads/zzia;

    iget-object v14, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzaev:Lcom/google/android/gms/internal/ads/zzid;

    iget v15, v8, Lcom/google/android/gms/internal/ads/zzhl;->repeatMode:I

    invoke-virtual {v12, v7, v13, v14, v15}, Lcom/google/android/gms/internal/ads/zzhy;->zza(ILcom/google/android/gms/internal/ads/zzia;Lcom/google/android/gms/internal/ads/zzid;I)I

    move-result v7

    if-eq v7, v5, :cond_356

    .line 432
    iget-object v12, v11, Lcom/google/android/gms/internal/ads/zzhk;->zzafn:Ljava/lang/Object;

    iget-object v13, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzafd:Lcom/google/android/gms/internal/ads/zzhy;

    iget-object v14, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzaew:Lcom/google/android/gms/internal/ads/zzia;

    .line 433
    invoke-virtual {v13, v7, v14, v10}, Lcom/google/android/gms/internal/ads/zzhy;->zza(ILcom/google/android/gms/internal/ads/zzia;Z)Lcom/google/android/gms/internal/ads/zzia;

    move-result-object v13

    iget-object v13, v13, Lcom/google/android/gms/internal/ads/zzia;->zzafn:Ljava/lang/Object;

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_356

    .line 434
    invoke-direct {v8, v7}, Lcom/google/android/gms/internal/ads/zzhl;->zzu(I)Z

    move-result v3

    invoke-virtual {v11, v7, v3}, Lcom/google/android/gms/internal/ads/zzhk;->zzc(IZ)V

    .line 435
    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzagr:Lcom/google/android/gms/internal/ads/zzhk;

    if-ne v11, v3, :cond_352

    const/4 v3, 0x1

    goto :goto_353

    :cond_352
    const/4 v3, 0x0

    :goto_353
    or-int/2addr v2, v3

    move-object v3, v11

    goto :goto_31f

    :cond_356
    if-nez v2, :cond_36c

    .line 437
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzags:Lcom/google/android/gms/internal/ads/zzhk;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzhk;->zzafr:I

    .line 438
    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzafi:Lcom/google/android/gms/internal/ads/zzhn;

    iget-wide v5, v3, Lcom/google/android/gms/internal/ads/zzhn;->zzagv:J

    invoke-direct {v8, v2, v5, v6}, Lcom/google/android/gms/internal/ads/zzhl;->zza(IJ)J

    move-result-wide v5

    .line 439
    new-instance v3, Lcom/google/android/gms/internal/ads/zzhn;

    invoke-direct {v3, v2, v5, v6}, Lcom/google/android/gms/internal/ads/zzhn;-><init>(IJ)V

    iput-object v3, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzafi:Lcom/google/android/gms/internal/ads/zzhn;

    goto :goto_375

    .line 441
    :cond_36c
    iput-object v3, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzagq:Lcom/google/android/gms/internal/ads/zzhk;

    .line 442
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzagq:Lcom/google/android/gms/internal/ads/zzhk;

    iput-object v6, v2, Lcom/google/android/gms/internal/ads/zzhk;->zzafw:Lcom/google/android/gms/internal/ads/zzhk;

    .line 443
    invoke-static {v11}, Lcom/google/android/gms/internal/ads/zzhl;->zza(Lcom/google/android/gms/internal/ads/zzhk;)V

    .line 444
    :cond_375
    :goto_375
    invoke-direct {v8, v1, v4}, Lcom/google/android/gms/internal/ads/zzhl;->zzb(Ljava/lang/Object;I)V

    :goto_378
    return v10

    .line 351
    :pswitch_379
    invoke-direct {v8, v10}, Lcom/google/android/gms/internal/ads/zzhl;->zzi(Z)V

    .line 352
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzafz:Lcom/google/android/gms/internal/ads/zzhs;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzhs;->zzfc()V

    .line 353
    invoke-direct {v8, v10}, Lcom/google/android/gms/internal/ads/zzhl;->setState(I)V

    .line 354
    monitor-enter p0
    :try_end_385
    .catch Lcom/google/android/gms/internal/ads/zzhd; {:try_start_dc .. :try_end_385} :catch_8b4
    .catch Ljava/io/IOException; {:try_start_dc .. :try_end_385} :catch_8af
    .catch Ljava/lang/RuntimeException; {:try_start_dc .. :try_end_385} :catch_8b9

    .line 355
    :try_start_385
    iput-boolean v10, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzagi:Z

    .line 356
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notifyAll()V

    .line 357
    monitor-exit p0

    return v10

    :catchall_38c
    move-exception v0

    move-object v1, v0

    monitor-exit p0
    :try_end_38f
    .catchall {:try_start_385 .. :try_end_38f} :catchall_38c

    :try_start_38f
    throw v1

    .line 348
    :pswitch_390
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhl;->zzew()V

    return v10

    .line 341
    :pswitch_394
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzhu;

    .line 342
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzagg:Lcom/google/android/gms/internal/ads/zzpd;

    if-eqz v2, :cond_3a3

    .line 343
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzagg:Lcom/google/android/gms/internal/ads/zzpd;

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/zzpd;->zzb(Lcom/google/android/gms/internal/ads/zzhu;)Lcom/google/android/gms/internal/ads/zzhu;

    move-result-object v1

    goto :goto_3a9

    .line 344
    :cond_3a3
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzagc:Lcom/google/android/gms/internal/ads/zzpl;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzpl;->zzb(Lcom/google/android/gms/internal/ads/zzhu;)Lcom/google/android/gms/internal/ads/zzhu;

    move-result-object v1

    .line 345
    :goto_3a9
    iput-object v1, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzafh:Lcom/google/android/gms/internal/ads/zzhu;

    .line 346
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzaes:Landroid/os/Handler;

    invoke-virtual {v2, v11, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return v10

    .line 308
    :pswitch_3b5
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzhm;

    .line 309
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzafd:Lcom/google/android/gms/internal/ads/zzhy;

    if-nez v2, :cond_3c6

    .line 310
    iget v2, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzagn:I

    add-int/2addr v2, v10

    iput v2, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzagn:I

    .line 311
    iput-object v1, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzago:Lcom/google/android/gms/internal/ads/zzhm;

    goto/16 :goto_453

    .line 313
    :cond_3c6
    invoke-direct {v8, v1}, Lcom/google/android/gms/internal/ads/zzhl;->zza(Lcom/google/android/gms/internal/ads/zzhm;)Landroid/util/Pair;

    move-result-object v2

    if-nez v2, :cond_3ec

    .line 315
    new-instance v1, Lcom/google/android/gms/internal/ads/zzhn;

    invoke-direct {v1, v9, v3, v4}, Lcom/google/android/gms/internal/ads/zzhn;-><init>(IJ)V

    iput-object v1, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzafi:Lcom/google/android/gms/internal/ads/zzhn;

    .line 316
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzaes:Landroid/os/Handler;

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzafi:Lcom/google/android/gms/internal/ads/zzhn;

    invoke-virtual {v1, v15, v10, v9, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 317
    new-instance v1, Lcom/google/android/gms/internal/ads/zzhn;

    invoke-direct {v1, v9, v12, v13}, Lcom/google/android/gms/internal/ads/zzhn;-><init>(IJ)V

    iput-object v1, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzafi:Lcom/google/android/gms/internal/ads/zzhn;

    .line 318
    invoke-direct {v8, v15}, Lcom/google/android/gms/internal/ads/zzhl;->setState(I)V

    .line 319
    invoke-direct {v8, v9}, Lcom/google/android/gms/internal/ads/zzhl;->zzi(Z)V

    goto :goto_453

    .line 321
    :cond_3ec
    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/zzhm;->zzagu:J

    cmp-long v1, v3, v12

    if-nez v1, :cond_3f4

    const/4 v1, 0x1

    goto :goto_3f5

    :cond_3f4
    const/4 v1, 0x0

    .line 322
    :goto_3f5
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 323
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4
    :try_end_405
    .catch Lcom/google/android/gms/internal/ads/zzhd; {:try_start_38f .. :try_end_405} :catch_8b4
    .catch Ljava/io/IOException; {:try_start_38f .. :try_end_405} :catch_8af
    .catch Ljava/lang/RuntimeException; {:try_start_38f .. :try_end_405} :catch_8b9

    .line 324
    :try_start_405
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzafi:Lcom/google/android/gms/internal/ads/zzhn;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzhn;->zzafr:I

    if-ne v3, v2, :cond_430

    const-wide/16 v6, 0x3e8

    div-long v11, v4, v6

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzafi:Lcom/google/android/gms/internal/ads/zzhn;

    iget-wide v13, v2, Lcom/google/android/gms/internal/ads/zzhn;->zzagv:J

    div-long/2addr v13, v6
    :try_end_414
    .catchall {:try_start_405 .. :try_end_414} :catchall_454

    cmp-long v2, v11, v13

    if-nez v2, :cond_430

    .line 325
    :try_start_418
    new-instance v2, Lcom/google/android/gms/internal/ads/zzhn;

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzhn;-><init>(IJ)V

    iput-object v2, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzafi:Lcom/google/android/gms/internal/ads/zzhn;

    .line 326
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzaes:Landroid/os/Handler;

    if-eqz v1, :cond_425

    const/4 v1, 0x1

    goto :goto_426

    :cond_425
    const/4 v1, 0x0

    :goto_426
    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzafi:Lcom/google/android/gms/internal/ads/zzhn;

    invoke-virtual {v2, v15, v1, v9, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 327
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_42f
    .catch Lcom/google/android/gms/internal/ads/zzhd; {:try_start_418 .. :try_end_42f} :catch_8b4
    .catch Ljava/io/IOException; {:try_start_418 .. :try_end_42f} :catch_8af
    .catch Ljava/lang/RuntimeException; {:try_start_418 .. :try_end_42f} :catch_8b9

    goto :goto_453

    .line 329
    :cond_430
    :try_start_430
    invoke-direct {v8, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzhl;->zza(IJ)J

    move-result-wide v6
    :try_end_434
    .catchall {:try_start_430 .. :try_end_434} :catchall_454

    cmp-long v2, v4, v6

    if-eqz v2, :cond_43a

    const/4 v2, 0x1

    goto :goto_43b

    :cond_43a
    const/4 v2, 0x0

    :goto_43b
    or-int/2addr v1, v2

    .line 332
    :try_start_43c
    new-instance v2, Lcom/google/android/gms/internal/ads/zzhn;

    invoke-direct {v2, v3, v6, v7}, Lcom/google/android/gms/internal/ads/zzhn;-><init>(IJ)V

    iput-object v2, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzafi:Lcom/google/android/gms/internal/ads/zzhn;

    .line 333
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzaes:Landroid/os/Handler;

    if-eqz v1, :cond_449

    const/4 v1, 0x1

    goto :goto_44a

    :cond_449
    const/4 v1, 0x0

    :goto_44a
    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzafi:Lcom/google/android/gms/internal/ads/zzhn;

    invoke-virtual {v2, v15, v1, v9, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 334
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :goto_453
    return v10

    :catchall_454
    move-exception v0

    move-object v2, v0

    .line 336
    new-instance v6, Lcom/google/android/gms/internal/ads/zzhn;

    invoke-direct {v6, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzhn;-><init>(IJ)V

    iput-object v6, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzafi:Lcom/google/android/gms/internal/ads/zzhn;

    .line 337
    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzaes:Landroid/os/Handler;

    if-eqz v1, :cond_463

    const/4 v1, 0x1

    goto :goto_464

    :cond_463
    const/4 v1, 0x0

    :goto_464
    iget-object v4, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzafi:Lcom/google/android/gms/internal/ads/zzhn;

    invoke-virtual {v3, v15, v1, v9, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 338
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 339
    throw v2

    .line 122
    :pswitch_46e
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 124
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzafd:Lcom/google/android/gms/internal/ads/zzhy;

    if-nez v1, :cond_47e

    .line 125
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzaga:Lcom/google/android/gms/internal/ads/zzmz;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzmz;->zzhz()V

    move-wide v14, v5

    goto/16 :goto_6da

    .line 128
    :cond_47e
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzagq:Lcom/google/android/gms/internal/ads/zzhk;

    if-nez v1, :cond_487

    .line 129
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzafi:Lcom/google/android/gms/internal/ads/zzhn;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzhn;->zzafr:I

    goto :goto_4c5

    .line 130
    :cond_487
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzagq:Lcom/google/android/gms/internal/ads/zzhk;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzhk;->zzafr:I

    .line 131
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzagq:Lcom/google/android/gms/internal/ads/zzhk;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/zzhk;->zzaft:Z

    if-nez v2, :cond_4d2

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzagq:Lcom/google/android/gms/internal/ads/zzhk;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhk;->zzeq()Z

    move-result v2

    if-eqz v2, :cond_4d2

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzafd:Lcom/google/android/gms/internal/ads/zzhy;

    iget-object v7, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzaew:Lcom/google/android/gms/internal/ads/zzia;

    .line 133
    invoke-virtual {v2, v1, v7, v9}, Lcom/google/android/gms/internal/ads/zzhy;->zza(ILcom/google/android/gms/internal/ads/zzia;Z)Lcom/google/android/gms/internal/ads/zzia;

    move-result-object v2

    .line 134
    iget-wide v14, v2, Lcom/google/android/gms/internal/ads/zzia;->zzaih:J

    cmp-long v2, v14, v12

    if-nez v2, :cond_4a8

    goto :goto_4d2

    .line 137
    :cond_4a8
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzags:Lcom/google/android/gms/internal/ads/zzhk;

    if-eqz v2, :cond_4b9

    .line 138
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzagq:Lcom/google/android/gms/internal/ads/zzhk;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzhk;->index:I

    iget-object v7, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzags:Lcom/google/android/gms/internal/ads/zzhk;

    iget v7, v7, Lcom/google/android/gms/internal/ads/zzhk;->index:I

    sub-int/2addr v2, v7

    const/16 v7, 0x64

    if-eq v2, v7, :cond_4d2

    .line 140
    :cond_4b9
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzafd:Lcom/google/android/gms/internal/ads/zzhy;

    iget-object v7, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzaew:Lcom/google/android/gms/internal/ads/zzia;

    iget-object v14, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzaev:Lcom/google/android/gms/internal/ads/zzid;

    iget v15, v8, Lcom/google/android/gms/internal/ads/zzhl;->repeatMode:I

    invoke-virtual {v2, v1, v7, v14, v15}, Lcom/google/android/gms/internal/ads/zzhy;->zza(ILcom/google/android/gms/internal/ads/zzia;Lcom/google/android/gms/internal/ads/zzid;I)I

    move-result v1

    .line 141
    :goto_4c5
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzafd:Lcom/google/android/gms/internal/ads/zzhy;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhy;->zzfg()I

    move-result v2

    if-lt v1, v2, :cond_4d5

    .line 142
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzaga:Lcom/google/android/gms/internal/ads/zzmz;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzmz;->zzhz()V

    :cond_4d2
    :goto_4d2
    move-wide v14, v5

    goto/16 :goto_5a7

    .line 144
    :cond_4d5
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzagq:Lcom/google/android/gms/internal/ads/zzhk;

    if-nez v2, :cond_4df

    .line 145
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzafi:Lcom/google/android/gms/internal/ads/zzhn;

    iget-wide v3, v2, Lcom/google/android/gms/internal/ads/zzhn;->zzagv:J

    :goto_4dd
    move-wide v14, v5

    goto :goto_534

    .line 146
    :cond_4df
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzafd:Lcom/google/android/gms/internal/ads/zzhy;

    iget-object v7, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzaew:Lcom/google/android/gms/internal/ads/zzia;

    .line 147
    invoke-virtual {v2, v1, v7, v9}, Lcom/google/android/gms/internal/ads/zzhy;->zza(ILcom/google/android/gms/internal/ads/zzia;Z)Lcom/google/android/gms/internal/ads/zzia;

    .line 148
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzafd:Lcom/google/android/gms/internal/ads/zzhy;

    iget-object v7, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzaev:Lcom/google/android/gms/internal/ads/zzid;

    .line 150
    invoke-virtual {v2, v9, v7, v9}, Lcom/google/android/gms/internal/ads/zzhy;->zza(ILcom/google/android/gms/internal/ads/zzid;Z)Lcom/google/android/gms/internal/ads/zzid;

    if-eqz v1, :cond_4f0

    goto :goto_4dd

    .line 153
    :cond_4f0
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzagq:Lcom/google/android/gms/internal/ads/zzhk;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhk;->zzep()J

    move-result-wide v1

    iget-object v7, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzafd:Lcom/google/android/gms/internal/ads/zzhy;

    iget-object v14, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzagq:Lcom/google/android/gms/internal/ads/zzhk;

    iget v14, v14, Lcom/google/android/gms/internal/ads/zzhk;->zzafr:I

    iget-object v15, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzaew:Lcom/google/android/gms/internal/ads/zzia;

    .line 155
    invoke-virtual {v7, v14, v15, v9}, Lcom/google/android/gms/internal/ads/zzhy;->zza(ILcom/google/android/gms/internal/ads/zzia;Z)Lcom/google/android/gms/internal/ads/zzia;

    move-result-object v7

    .line 156
    iget-wide v14, v7, Lcom/google/android/gms/internal/ads/zzia;->zzaih:J

    add-long/2addr v1, v14

    .line 157
    iget-wide v14, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzagp:J

    sub-long/2addr v1, v14

    .line 158
    iget-object v7, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzafd:Lcom/google/android/gms/internal/ads/zzhy;

    const/4 v14, 0x0

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    .line 159
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v18

    move-object/from16 v1, p0

    move-object v2, v7

    move v3, v14

    move-wide v14, v5

    move-wide/from16 v4, v16

    move-wide/from16 v6, v18

    .line 160
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzhl;->zza(Lcom/google/android/gms/internal/ads/zzhy;IJJ)Landroid/util/Pair;

    move-result-object v1

    if-eqz v1, :cond_5a7

    .line 162
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 163
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    move v1, v2

    .line 164
    :goto_534
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzagq:Lcom/google/android/gms/internal/ads/zzhk;

    if-nez v2, :cond_53f

    const-wide/32 v5, 0x3938700

    add-long/2addr v5, v3

    :goto_53c
    move-wide/from16 v23, v5

    goto :goto_555

    .line 166
    :cond_53f
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzagq:Lcom/google/android/gms/internal/ads/zzhk;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhk;->zzep()J

    move-result-wide v5

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzafd:Lcom/google/android/gms/internal/ads/zzhy;

    iget-object v7, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzagq:Lcom/google/android/gms/internal/ads/zzhk;

    iget v7, v7, Lcom/google/android/gms/internal/ads/zzhk;->zzafr:I

    iget-object v11, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzaew:Lcom/google/android/gms/internal/ads/zzia;

    .line 168
    invoke-virtual {v2, v7, v11, v9}, Lcom/google/android/gms/internal/ads/zzhy;->zza(ILcom/google/android/gms/internal/ads/zzia;Z)Lcom/google/android/gms/internal/ads/zzia;

    move-result-object v2

    .line 169
    iget-wide v12, v2, Lcom/google/android/gms/internal/ads/zzia;->zzaih:J

    add-long/2addr v5, v12

    goto :goto_53c

    .line 171
    :goto_555
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzagq:Lcom/google/android/gms/internal/ads/zzhk;

    if-nez v2, :cond_55c

    const/16 v29, 0x0

    goto :goto_563

    :cond_55c
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzagq:Lcom/google/android/gms/internal/ads/zzhk;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzhk;->index:I

    add-int/2addr v2, v10

    move/from16 v29, v2

    .line 172
    :goto_563
    invoke-direct {v8, v1}, Lcom/google/android/gms/internal/ads/zzhl;->zzu(I)Z

    move-result v31

    .line 173
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzafd:Lcom/google/android/gms/internal/ads/zzhy;

    iget-object v5, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzaew:Lcom/google/android/gms/internal/ads/zzia;

    invoke-virtual {v2, v1, v5, v10}, Lcom/google/android/gms/internal/ads/zzhy;->zza(ILcom/google/android/gms/internal/ads/zzia;Z)Lcom/google/android/gms/internal/ads/zzia;

    .line 174
    new-instance v2, Lcom/google/android/gms/internal/ads/zzhk;

    iget-object v5, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzaep:[Lcom/google/android/gms/internal/ads/zzhx;

    iget-object v6, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzafy:[Lcom/google/android/gms/internal/ads/zzhw;

    iget-object v7, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzaeq:Lcom/google/android/gms/internal/ads/zzog;

    iget-object v11, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzafz:Lcom/google/android/gms/internal/ads/zzhs;

    iget-object v12, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzaga:Lcom/google/android/gms/internal/ads/zzmz;

    iget-object v13, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzaew:Lcom/google/android/gms/internal/ads/zzia;

    iget-object v13, v13, Lcom/google/android/gms/internal/ads/zzia;->zzafn:Ljava/lang/Object;

    move-object/from16 v20, v2

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    move-object/from16 v25, v7

    move-object/from16 v26, v11

    move-object/from16 v27, v12

    move-object/from16 v28, v13

    move/from16 v30, v1

    move-wide/from16 v32, v3

    invoke-direct/range {v20 .. v33}, Lcom/google/android/gms/internal/ads/zzhk;-><init>([Lcom/google/android/gms/internal/ads/zzhx;[Lcom/google/android/gms/internal/ads/zzhw;JLcom/google/android/gms/internal/ads/zzog;Lcom/google/android/gms/internal/ads/zzhs;Lcom/google/android/gms/internal/ads/zzmz;Ljava/lang/Object;IIZJ)V

    .line 175
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzagq:Lcom/google/android/gms/internal/ads/zzhk;

    if-eqz v1, :cond_59b

    .line 176
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzagq:Lcom/google/android/gms/internal/ads/zzhk;

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzhk;->zzafw:Lcom/google/android/gms/internal/ads/zzhk;

    .line 177
    :cond_59b
    iput-object v2, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzagq:Lcom/google/android/gms/internal/ads/zzhk;

    .line 178
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzagq:Lcom/google/android/gms/internal/ads/zzhk;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzhk;->zzafm:Lcom/google/android/gms/internal/ads/zzmx;

    invoke-interface {v1, v8, v3, v4}, Lcom/google/android/gms/internal/ads/zzmx;->zza(Lcom/google/android/gms/internal/ads/zzna;J)V

    .line 179
    invoke-direct {v8, v10}, Lcom/google/android/gms/internal/ads/zzhl;->zzh(Z)V

    .line 180
    :cond_5a7
    :goto_5a7
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzagq:Lcom/google/android/gms/internal/ads/zzhk;

    if-eqz v1, :cond_5c0

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzagq:Lcom/google/android/gms/internal/ads/zzhk;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhk;->zzeq()Z

    move-result v1

    if-eqz v1, :cond_5b4

    goto :goto_5c0

    .line 182
    :cond_5b4
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzagq:Lcom/google/android/gms/internal/ads/zzhk;

    if-eqz v1, :cond_5c3

    iget-boolean v1, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzafc:Z

    if-nez v1, :cond_5c3

    .line 183
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhl;->zzey()V

    goto :goto_5c3

    .line 181
    :cond_5c0
    :goto_5c0
    invoke-direct {v8, v9}, Lcom/google/android/gms/internal/ads/zzhl;->zzh(Z)V

    .line 184
    :cond_5c3
    :goto_5c3
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzags:Lcom/google/android/gms/internal/ads/zzhk;

    if-eqz v1, :cond_6da

    .line 185
    :goto_5c7
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzags:Lcom/google/android/gms/internal/ads/zzhk;

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzagr:Lcom/google/android/gms/internal/ads/zzhk;

    if-eq v1, v2, :cond_604

    iget-wide v1, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzagp:J

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzags:Lcom/google/android/gms/internal/ads/zzhk;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzhk;->zzafw:Lcom/google/android/gms/internal/ads/zzhk;

    iget-wide v3, v3, Lcom/google/android/gms/internal/ads/zzhk;->zzafq:J

    cmp-long v5, v1, v3

    if-ltz v5, :cond_604

    .line 186
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzags:Lcom/google/android/gms/internal/ads/zzhk;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhk;->release()V

    .line 187
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzags:Lcom/google/android/gms/internal/ads/zzhk;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzhk;->zzafw:Lcom/google/android/gms/internal/ads/zzhk;

    invoke-direct {v8, v1}, Lcom/google/android/gms/internal/ads/zzhl;->zzb(Lcom/google/android/gms/internal/ads/zzhk;)V

    .line 188
    new-instance v1, Lcom/google/android/gms/internal/ads/zzhn;

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzags:Lcom/google/android/gms/internal/ads/zzhk;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzhk;->zzafr:I

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzags:Lcom/google/android/gms/internal/ads/zzhk;

    iget-wide v3, v3, Lcom/google/android/gms/internal/ads/zzhk;->zzafs:J

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzhn;-><init>(IJ)V

    iput-object v1, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzafi:Lcom/google/android/gms/internal/ads/zzhn;

    .line 189
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhl;->zzev()V

    .line 190
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzaes:Landroid/os/Handler;

    const/4 v2, 0x5

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzafi:Lcom/google/android/gms/internal/ads/zzhn;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_5c7

    .line 191
    :cond_604
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzagr:Lcom/google/android/gms/internal/ads/zzhk;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzhk;->zzaft:Z

    if-eqz v1, :cond_62e

    const/4 v1, 0x0

    .line 192
    :goto_60b
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzaep:[Lcom/google/android/gms/internal/ads/zzhx;

    array-length v2, v2

    if-ge v1, v2, :cond_6da

    .line 193
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzaep:[Lcom/google/android/gms/internal/ads/zzhx;

    aget-object v2, v2, v1

    .line 194
    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzagr:Lcom/google/android/gms/internal/ads/zzhk;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzhk;->zzafo:[Lcom/google/android/gms/internal/ads/zznm;

    aget-object v3, v3, v1

    if-eqz v3, :cond_62b

    .line 195
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzhx;->zzeb()Lcom/google/android/gms/internal/ads/zznm;

    move-result-object v4

    if-ne v4, v3, :cond_62b

    .line 196
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzhx;->zzec()Z

    move-result v3

    if-eqz v3, :cond_62b

    .line 197
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzhx;->zzed()V

    :cond_62b
    add-int/lit8 v1, v1, 0x1

    goto :goto_60b

    :cond_62e
    const/4 v1, 0x0

    .line 200
    :goto_62f
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzaep:[Lcom/google/android/gms/internal/ads/zzhx;

    array-length v2, v2

    if-ge v1, v2, :cond_651

    .line 201
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzaep:[Lcom/google/android/gms/internal/ads/zzhx;

    aget-object v2, v2, v1

    .line 202
    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzagr:Lcom/google/android/gms/internal/ads/zzhk;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzhk;->zzafo:[Lcom/google/android/gms/internal/ads/zznm;

    aget-object v3, v3, v1

    .line 203
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzhx;->zzeb()Lcom/google/android/gms/internal/ads/zznm;

    move-result-object v4

    if-ne v4, v3, :cond_6da

    if-eqz v3, :cond_64e

    .line 204
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzhx;->zzec()Z

    move-result v2

    if-nez v2, :cond_64e

    goto/16 :goto_6da

    :cond_64e
    add-int/lit8 v1, v1, 0x1

    goto :goto_62f

    .line 207
    :cond_651
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzagr:Lcom/google/android/gms/internal/ads/zzhk;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzhk;->zzafw:Lcom/google/android/gms/internal/ads/zzhk;

    if-eqz v1, :cond_6da

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzagr:Lcom/google/android/gms/internal/ads/zzhk;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzhk;->zzafw:Lcom/google/android/gms/internal/ads/zzhk;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzhk;->zzafu:Z

    if-eqz v1, :cond_6da

    .line 208
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzagr:Lcom/google/android/gms/internal/ads/zzhk;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzhk;->zzafx:Lcom/google/android/gms/internal/ads/zzoi;

    .line 209
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzagr:Lcom/google/android/gms/internal/ads/zzhk;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzhk;->zzafw:Lcom/google/android/gms/internal/ads/zzhk;

    iput-object v2, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzagr:Lcom/google/android/gms/internal/ads/zzhk;

    .line 210
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzagr:Lcom/google/android/gms/internal/ads/zzhk;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzhk;->zzafx:Lcom/google/android/gms/internal/ads/zzoi;

    .line 211
    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzagr:Lcom/google/android/gms/internal/ads/zzhk;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzhk;->zzafm:Lcom/google/android/gms/internal/ads/zzmx;

    .line 212
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzmx;->zzhq()J

    move-result-wide v3

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v3, v5

    if-eqz v7, :cond_680

    const/4 v3, 0x1

    goto :goto_681

    :cond_680
    const/4 v3, 0x0

    :goto_681
    const/4 v4, 0x0

    .line 213
    :goto_682
    iget-object v5, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzaep:[Lcom/google/android/gms/internal/ads/zzhx;

    array-length v5, v5

    if-ge v4, v5, :cond_6da

    .line 214
    iget-object v5, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzaep:[Lcom/google/android/gms/internal/ads/zzhx;

    aget-object v5, v5, v4

    .line 215
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzoi;->zzbhx:Lcom/google/android/gms/internal/ads/zzod;

    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/ads/zzod;->zzbg(I)Lcom/google/android/gms/internal/ads/zzob;

    move-result-object v6

    if-eqz v6, :cond_6d7

    if-nez v3, :cond_6d4

    .line 218
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzhx;->zzee()Z

    move-result v6

    if-nez v6, :cond_6d7

    .line 219
    iget-object v6, v2, Lcom/google/android/gms/internal/ads/zzoi;->zzbhx:Lcom/google/android/gms/internal/ads/zzod;

    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/ads/zzod;->zzbg(I)Lcom/google/android/gms/internal/ads/zzob;

    move-result-object v6

    .line 220
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzoi;->zzbhz:[Lcom/google/android/gms/internal/ads/zzhz;

    aget-object v7, v7, v4

    .line 221
    iget-object v11, v2, Lcom/google/android/gms/internal/ads/zzoi;->zzbhz:[Lcom/google/android/gms/internal/ads/zzhz;

    aget-object v11, v11, v4

    if-eqz v6, :cond_6d4

    .line 222
    invoke-virtual {v11, v7}, Lcom/google/android/gms/internal/ads/zzhz;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6d4

    .line 223
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzob;->length()I

    move-result v7

    new-array v7, v7, [Lcom/google/android/gms/internal/ads/zzho;

    const/4 v11, 0x0

    .line 224
    :goto_6b8
    array-length v12, v7

    if-ge v11, v12, :cond_6c4

    .line 225
    invoke-interface {v6, v11}, Lcom/google/android/gms/internal/ads/zzob;->zzbe(I)Lcom/google/android/gms/internal/ads/zzho;

    move-result-object v12

    aput-object v12, v7, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_6b8

    .line 227
    :cond_6c4
    iget-object v6, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzagr:Lcom/google/android/gms/internal/ads/zzhk;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzhk;->zzafo:[Lcom/google/android/gms/internal/ads/zznm;

    aget-object v6, v6, v4

    iget-object v11, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzagr:Lcom/google/android/gms/internal/ads/zzhk;

    .line 228
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzhk;->zzep()J

    move-result-wide v11

    .line 229
    invoke-interface {v5, v7, v6, v11, v12}, Lcom/google/android/gms/internal/ads/zzhx;->zza([Lcom/google/android/gms/internal/ads/zzho;Lcom/google/android/gms/internal/ads/zznm;J)V

    goto :goto_6d7

    .line 231
    :cond_6d4
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzhx;->zzed()V

    :cond_6d7
    :goto_6d7
    add-int/lit8 v4, v4, 0x1

    goto :goto_682

    .line 233
    :cond_6da
    :goto_6da
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzags:Lcom/google/android/gms/internal/ads/zzhk;

    const-wide/16 v2, 0xa

    if-nez v1, :cond_6e8

    .line 234
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhl;->zzex()V

    .line 235
    invoke-direct {v8, v14, v15, v2, v3}, Lcom/google/android/gms/internal/ads/zzhl;->zza(JJ)V

    goto/16 :goto_84a

    :cond_6e8
    const-string v1, "doSomeWork"

    .line 237
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzpn;->beginSection(Ljava/lang/String;)V

    .line 238
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhl;->zzev()V

    .line 239
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzags:Lcom/google/android/gms/internal/ads/zzhk;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzhk;->zzafm:Lcom/google/android/gms/internal/ads/zzmx;

    iget-object v4, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzafi:Lcom/google/android/gms/internal/ads/zzhn;

    iget-wide v4, v4, Lcom/google/android/gms/internal/ads/zzhn;->zzagv:J

    invoke-interface {v1, v4, v5}, Lcom/google/android/gms/internal/ads/zzmx;->zzee(J)V

    .line 242
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzagh:[Lcom/google/android/gms/internal/ads/zzhx;

    array-length v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    :goto_701
    if-ge v5, v4, :cond_738

    aget-object v11, v1, v5

    .line 243
    iget-wide v12, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzagp:J

    iget-wide v2, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzagm:J

    invoke-interface {v11, v12, v13, v2, v3}, Lcom/google/android/gms/internal/ads/zzhx;->zzb(JJ)V

    if-eqz v7, :cond_716

    .line 244
    invoke-interface {v11}, Lcom/google/android/gms/internal/ads/zzhx;->zzfe()Z

    move-result v2

    if-eqz v2, :cond_716

    const/4 v7, 0x1

    goto :goto_717

    :cond_716
    const/4 v7, 0x0

    .line 245
    :goto_717
    invoke-interface {v11}, Lcom/google/android/gms/internal/ads/zzhx;->isReady()Z

    move-result v2

    if-nez v2, :cond_726

    invoke-interface {v11}, Lcom/google/android/gms/internal/ads/zzhx;->zzfe()Z

    move-result v2

    if-eqz v2, :cond_724

    goto :goto_726

    :cond_724
    const/4 v2, 0x0

    goto :goto_727

    :cond_726
    :goto_726
    const/4 v2, 0x1

    :goto_727
    if-nez v2, :cond_72c

    .line 247
    invoke-interface {v11}, Lcom/google/android/gms/internal/ads/zzhx;->zzef()V

    :cond_72c
    if-eqz v6, :cond_732

    if-eqz v2, :cond_732

    const/4 v6, 0x1

    goto :goto_733

    :cond_732
    const/4 v6, 0x0

    :goto_733
    add-int/lit8 v5, v5, 0x1

    const-wide/16 v2, 0xa

    goto :goto_701

    :cond_738
    if-nez v6, :cond_73d

    .line 251
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhl;->zzex()V

    .line 252
    :cond_73d
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzagg:Lcom/google/android/gms/internal/ads/zzpd;

    if-eqz v1, :cond_762

    .line 253
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzagg:Lcom/google/android/gms/internal/ads/zzpd;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzpd;->zzfs()Lcom/google/android/gms/internal/ads/zzhu;

    move-result-object v1

    .line 254
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzafh:Lcom/google/android/gms/internal/ads/zzhu;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzhu;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_762

    .line 255
    iput-object v1, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzafh:Lcom/google/android/gms/internal/ads/zzhu;

    .line 256
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzagc:Lcom/google/android/gms/internal/ads/zzpl;

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzagg:Lcom/google/android/gms/internal/ads/zzpd;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzpl;->zza(Lcom/google/android/gms/internal/ads/zzpd;)V

    .line 257
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzaes:Landroid/os/Handler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 258
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 259
    :cond_762
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzafd:Lcom/google/android/gms/internal/ads/zzhy;

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzags:Lcom/google/android/gms/internal/ads/zzhk;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzhk;->zzafr:I

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzaew:Lcom/google/android/gms/internal/ads/zzia;

    .line 260
    invoke-virtual {v1, v2, v3, v9}, Lcom/google/android/gms/internal/ads/zzhy;->zza(ILcom/google/android/gms/internal/ads/zzia;Z)Lcom/google/android/gms/internal/ads/zzia;

    move-result-object v1

    .line 261
    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zzia;->zzaih:J

    if-eqz v7, :cond_793

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_783

    .line 263
    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzafi:Lcom/google/android/gms/internal/ads/zzhn;

    iget-wide v3, v3, Lcom/google/android/gms/internal/ads/zzhn;->zzagv:J

    cmp-long v5, v1, v3

    if-gtz v5, :cond_793

    :cond_783
    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzags:Lcom/google/android/gms/internal/ads/zzhk;

    iget-boolean v3, v3, Lcom/google/android/gms/internal/ads/zzhk;->zzaft:Z

    if-eqz v3, :cond_793

    const/4 v3, 0x4

    .line 264
    invoke-direct {v8, v3}, Lcom/google/android/gms/internal/ads/zzhl;->setState(I)V

    .line 265
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhl;->zzeu()V

    const/4 v4, 0x2

    goto/16 :goto_813

    .line 266
    :cond_793
    iget v3, v8, Lcom/google/android/gms/internal/ads/zzhl;->state:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_7f8

    .line 267
    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzagh:[Lcom/google/android/gms/internal/ads/zzhx;

    array-length v3, v3

    if-lez v3, :cond_7e6

    if-eqz v6, :cond_7e4

    .line 268
    iget-boolean v1, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzagj:Z

    .line 269
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzagq:Lcom/google/android/gms/internal/ads/zzhk;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/zzhk;->zzafu:Z

    if-nez v2, :cond_7ac

    .line 270
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzagq:Lcom/google/android/gms/internal/ads/zzhk;

    iget-wide v2, v2, Lcom/google/android/gms/internal/ads/zzhk;->zzafs:J

    goto :goto_7b4

    .line 271
    :cond_7ac
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzagq:Lcom/google/android/gms/internal/ads/zzhk;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzhk;->zzafm:Lcom/google/android/gms/internal/ads/zzmx;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzmx;->zzhr()J

    move-result-wide v2

    :goto_7b4
    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v7, v2, v5

    if-nez v7, :cond_7d0

    .line 273
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzagq:Lcom/google/android/gms/internal/ads/zzhk;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/zzhk;->zzaft:Z

    if-eqz v2, :cond_7c2

    const/4 v1, 0x1

    goto :goto_7e0

    .line 275
    :cond_7c2
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzafd:Lcom/google/android/gms/internal/ads/zzhy;

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzagq:Lcom/google/android/gms/internal/ads/zzhk;

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzhk;->zzafr:I

    iget-object v5, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzaew:Lcom/google/android/gms/internal/ads/zzia;

    .line 276
    invoke-virtual {v2, v3, v5, v9}, Lcom/google/android/gms/internal/ads/zzhy;->zza(ILcom/google/android/gms/internal/ads/zzia;Z)Lcom/google/android/gms/internal/ads/zzia;

    move-result-object v2

    .line 277
    iget-wide v2, v2, Lcom/google/android/gms/internal/ads/zzia;->zzaih:J

    .line 279
    :cond_7d0
    iget-object v5, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzafz:Lcom/google/android/gms/internal/ads/zzhs;

    iget-object v6, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzagq:Lcom/google/android/gms/internal/ads/zzhk;

    iget-wide v11, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzagp:J

    .line 281
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzhk;->zzep()J

    move-result-wide v6

    sub-long/2addr v11, v6

    sub-long/2addr v2, v11

    .line 283
    invoke-interface {v5, v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzhs;->zzc(JZ)Z

    move-result v1

    :goto_7e0
    if-eqz v1, :cond_7e4

    const/4 v1, 0x1

    goto :goto_7ea

    :cond_7e4
    const/4 v1, 0x0

    goto :goto_7ea

    .line 285
    :cond_7e6
    invoke-direct {v8, v1, v2}, Lcom/google/android/gms/internal/ads/zzhl;->zzdr(J)Z

    move-result v1

    :goto_7ea
    if-eqz v1, :cond_813

    const/4 v1, 0x3

    .line 287
    invoke-direct {v8, v1}, Lcom/google/android/gms/internal/ads/zzhl;->setState(I)V

    .line 288
    iget-boolean v1, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzaey:Z

    if-eqz v1, :cond_813

    .line 289
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhl;->zzet()V

    goto :goto_813

    .line 290
    :cond_7f8
    iget v3, v8, Lcom/google/android/gms/internal/ads/zzhl;->state:I

    const/4 v5, 0x3

    if-ne v3, v5, :cond_813

    .line 291
    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzagh:[Lcom/google/android/gms/internal/ads/zzhx;

    array-length v3, v3

    if-lez v3, :cond_803

    goto :goto_807

    .line 292
    :cond_803
    invoke-direct {v8, v1, v2}, Lcom/google/android/gms/internal/ads/zzhl;->zzdr(J)Z

    move-result v6

    :goto_807
    if-nez v6, :cond_813

    .line 294
    iget-boolean v1, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzaey:Z

    iput-boolean v1, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzagj:Z

    .line 295
    invoke-direct {v8, v4}, Lcom/google/android/gms/internal/ads/zzhl;->setState(I)V

    .line 296
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhl;->zzeu()V

    .line 297
    :cond_813
    :goto_813
    iget v1, v8, Lcom/google/android/gms/internal/ads/zzhl;->state:I

    if-ne v1, v4, :cond_824

    .line 298
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzagh:[Lcom/google/android/gms/internal/ads/zzhx;

    array-length v2, v1

    :goto_81a
    if-ge v9, v2, :cond_824

    aget-object v3, v1, v9

    .line 299
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzhx;->zzef()V

    add-int/lit8 v9, v9, 0x1

    goto :goto_81a

    .line 301
    :cond_824
    iget-boolean v1, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzaey:Z

    if-eqz v1, :cond_82d

    iget v1, v8, Lcom/google/android/gms/internal/ads/zzhl;->state:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_831

    :cond_82d
    iget v1, v8, Lcom/google/android/gms/internal/ads/zzhl;->state:I

    if-ne v1, v4, :cond_837

    :cond_831
    const-wide/16 v1, 0xa

    .line 302
    invoke-direct {v8, v14, v15, v1, v2}, Lcom/google/android/gms/internal/ads/zzhl;->zza(JJ)V

    goto :goto_847

    .line 303
    :cond_837
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzagh:[Lcom/google/android/gms/internal/ads/zzhx;

    array-length v1, v1

    if-eqz v1, :cond_842

    const-wide/16 v1, 0x3e8

    .line 304
    invoke-direct {v8, v14, v15, v1, v2}, Lcom/google/android/gms/internal/ads/zzhl;->zza(JJ)V

    goto :goto_847

    .line 305
    :cond_842
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzhl;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 306
    :goto_847
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzpn;->endSection()V

    :goto_84a
    return v10

    :pswitch_84b
    const/4 v4, 0x2

    .line 83
    iget v1, v1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_852

    const/4 v1, 0x1

    goto :goto_853

    :cond_852
    const/4 v1, 0x0

    .line 84
    :goto_853
    iput-boolean v9, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzagj:Z

    .line 85
    iput-boolean v1, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzaey:Z

    if-nez v1, :cond_860

    .line 87
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhl;->zzeu()V

    .line 88
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhl;->zzev()V

    goto :goto_877

    .line 89
    :cond_860
    iget v1, v8, Lcom/google/android/gms/internal/ads/zzhl;->state:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_86e

    .line 90
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhl;->zzet()V

    .line 91
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzhl;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_877

    .line 92
    :cond_86e
    iget v1, v8, Lcom/google/android/gms/internal/ads/zzhl;->state:I

    if-ne v1, v4, :cond_877

    .line 93
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzhl;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_877
    :goto_877
    return v10

    :pswitch_878
    const/4 v4, 0x2

    .line 72
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzmz;

    iget v1, v1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_883

    const/4 v1, 0x1

    goto :goto_884

    :cond_883
    const/4 v1, 0x0

    .line 73
    :goto_884
    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzaes:Landroid/os/Handler;

    invoke-virtual {v3, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 74
    invoke-direct {v8, v10}, Lcom/google/android/gms/internal/ads/zzhl;->zzi(Z)V

    .line 75
    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzafz:Lcom/google/android/gms/internal/ads/zzhs;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzhs;->zzfb()V

    if-eqz v1, :cond_89f

    .line 77
    new-instance v1, Lcom/google/android/gms/internal/ads/zzhn;

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v1, v9, v5, v6}, Lcom/google/android/gms/internal/ads/zzhn;-><init>(IJ)V

    iput-object v1, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzafi:Lcom/google/android/gms/internal/ads/zzhn;

    .line 78
    :cond_89f
    iput-object v2, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzaga:Lcom/google/android/gms/internal/ads/zzmz;

    .line 79
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzage:Lcom/google/android/gms/internal/ads/zzhc;

    invoke-interface {v2, v1, v10, v8}, Lcom/google/android/gms/internal/ads/zzmz;->zza(Lcom/google/android/gms/internal/ads/zzhc;ZLcom/google/android/gms/internal/ads/zznc;)V

    .line 80
    invoke-direct {v8, v4}, Lcom/google/android/gms/internal/ads/zzhl;->setState(I)V

    .line 81
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzhl;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_8ae
    .catch Lcom/google/android/gms/internal/ads/zzhd; {:try_start_43c .. :try_end_8ae} :catch_8b4
    .catch Ljava/io/IOException; {:try_start_43c .. :try_end_8ae} :catch_8af
    .catch Ljava/lang/RuntimeException; {:try_start_43c .. :try_end_8ae} :catch_8b9

    return v10

    :catch_8af
    move-exception v0

    move-object v1, v0

    const/16 v3, 0x8

    goto :goto_8d9

    :catch_8b4
    move-exception v0

    move-object v1, v0

    const/16 v3, 0x8

    goto :goto_8f5

    :catch_8b9
    move-exception v0

    move-object v1, v0

    const-string v2, "ExoPlayerImplInternal"

    const-string v3, "Internal runtime error."

    .line 540
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 541
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzaes:Landroid/os/Handler;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzhd;->zza(Ljava/lang/RuntimeException;)Lcom/google/android/gms/internal/ads/zzhd;

    move-result-object v1

    const/16 v3, 0x8

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 542
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 543
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhl;->zzew()V

    return v10

    :catch_8d5
    move-exception v0

    const/16 v3, 0x8

    move-object v1, v0

    :goto_8d9
    const-string v2, "ExoPlayerImplInternal"

    const-string v4, "Source error."

    .line 535
    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 536
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzaes:Landroid/os/Handler;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzhd;->zza(Ljava/io/IOException;)Lcom/google/android/gms/internal/ads/zzhd;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 537
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhl;->zzew()V

    return v10

    :catch_8f1
    move-exception v0

    const/16 v3, 0x8

    move-object v1, v0

    :goto_8f5
    const-string v2, "ExoPlayerImplInternal"

    const-string v4, "Renderer error."

    .line 530
    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 531
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzhl;->zzaes:Landroid/os/Handler;

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 532
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhl;->zzew()V

    return v10

    nop

    :pswitch_data_90a
    .packed-switch 0x0
        :pswitch_878
        :pswitch_84b
        :pswitch_46e
        :pswitch_3b5
        :pswitch_394
        :pswitch_390
        :pswitch_379
        :pswitch_21b
        :pswitch_1e5
        :pswitch_1d2
        :pswitch_dd
        :pswitch_9f
        :pswitch_19
    .end packed-switch
.end method

.method public final declared-synchronized release()V
    .registers 3

    monitor-enter p0

    .line 54
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzagi:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_24

    if-eqz v0, :cond_7

    .line 55
    monitor-exit p0

    return-void

    .line 56
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhl;->handler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 57
    :goto_d
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzagi:Z
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_24

    if-nez v0, :cond_1d

    .line 58
    :try_start_11
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_14} :catch_15
    .catchall {:try_start_11 .. :try_end_14} :catchall_24

    goto :goto_d

    .line 61
    :catch_15
    :try_start_15
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_d

    .line 63
    :cond_1d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzagd:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z
    :try_end_22
    .catchall {:try_start_15 .. :try_end_22} :catchall_24

    .line 64
    monitor-exit p0

    return-void

    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0

    return-void
.end method

.method public final stop()V
    .registers 3

    .line 34
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhl;->handler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzhy;IJ)V
    .registers 7

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhl;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzhm;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzhm;-><init>(Lcom/google/android/gms/internal/ads/zzhy;IJ)V

    const/4 p1, 0x3

    invoke-virtual {v0, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 32
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzmx;)V
    .registers 4

    .line 67
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhl;->handler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzmz;Z)V
    .registers 5

    .line 26
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzhl;->handler:Landroid/os/Handler;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1, v0, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 27
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zznl;)V
    .registers 4

    .line 818
    check-cast p1, Lcom/google/android/gms/internal/ads/zzmx;

    .line 819
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhl;->handler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final varargs zza([Lcom/google/android/gms/internal/ads/zzhh;)V
    .registers 4

    .line 36
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzagi:Z

    if-eqz v0, :cond_c

    const-string p1, "ExoPlayerImplInternal"

    const-string v0, "Ignoring messages sent after release."

    .line 37
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 39
    :cond_c
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzagk:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzagk:I

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhl;->handler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzhy;Ljava/lang/Object;)V
    .registers 4

    .line 65
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhl;->handler:Landroid/os/Handler;

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    const/4 p2, 0x7

    invoke-virtual {v0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final varargs declared-synchronized zzb([Lcom/google/android/gms/internal/ads/zzhh;)V
    .registers 5

    monitor-enter p0

    .line 42
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzagi:Z

    if-eqz v0, :cond_e

    const-string p1, "ExoPlayerImplInternal"

    const-string v0, "Ignoring messages sent after release."

    .line 43
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_31

    .line 44
    monitor-exit p0

    return-void

    .line 45
    :cond_e
    :try_start_e
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzagk:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzagk:I

    .line 46
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhl;->handler:Landroid/os/Handler;

    const/16 v2, 0xb

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 47
    :goto_1f
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzagl:I
    :try_end_21
    .catchall {:try_start_e .. :try_end_21} :catchall_31

    if-gt p1, v0, :cond_2f

    .line 48
    :try_start_23
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_26
    .catch Ljava/lang/InterruptedException; {:try_start_23 .. :try_end_26} :catch_27
    .catchall {:try_start_23 .. :try_end_26} :catchall_31

    goto :goto_1f

    .line 51
    :catch_27
    :try_start_27
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V
    :try_end_2e
    .catchall {:try_start_27 .. :try_end_2e} :catchall_31

    goto :goto_1f

    .line 53
    :cond_2f
    monitor-exit p0

    return-void

    :catchall_31
    move-exception p1

    monitor-exit p0

    throw p1

    return-void
.end method

.method public final zzes()V
    .registers 3

    .line 69
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhl;->handler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final zzf(Z)V
    .registers 5

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhl;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
