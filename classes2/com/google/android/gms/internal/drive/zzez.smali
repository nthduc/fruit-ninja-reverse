.class public final Lcom/google/android/gms/internal/drive/zzez;
.super Lcom/google/android/gms/internal/drive/zzkk;

# interfaces
.implements Lcom/google/android/gms/internal/drive/zzls;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/drive/zzez$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/drive/zzkk<",
        "Lcom/google/android/gms/internal/drive/zzez;",
        "Lcom/google/android/gms/internal/drive/zzez$zza;",
        ">;",
        "Lcom/google/android/gms/internal/drive/zzls;"
    }
.end annotation


# static fields
.field private static final zzhj:Lcom/google/android/gms/internal/drive/zzez;

.field private static volatile zzhk:Lcom/google/android/gms/internal/drive/zzmb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/drive/zzmb<",
            "Lcom/google/android/gms/internal/drive/zzez;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzhd:I

.field private zzhe:I

.field private zzhf:J

.field private zzhg:J

.field private zzhh:J

.field private zzhi:B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 46
    new-instance v0, Lcom/google/android/gms/internal/drive/zzez;

    invoke-direct {v0}, Lcom/google/android/gms/internal/drive/zzez;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/drive/zzez;->zzhj:Lcom/google/android/gms/internal/drive/zzez;

    .line 47
    const-class v0, Lcom/google/android/gms/internal/drive/zzez;

    sget-object v1, Lcom/google/android/gms/internal/drive/zzez;->zzhj:Lcom/google/android/gms/internal/drive/zzez;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/drive/zzkk;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/drive/zzkk;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/drive/zzkk;-><init>()V

    const/4 v0, 0x2

    .line 2
    iput-byte v0, p0, Lcom/google/android/gms/internal/drive/zzez;->zzhi:B

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/google/android/gms/internal/drive/zzez;->zzhe:I

    const-wide/16 v0, -0x1

    .line 4
    iput-wide v0, p0, Lcom/google/android/gms/internal/drive/zzez;->zzhf:J

    .line 5
    iput-wide v0, p0, Lcom/google/android/gms/internal/drive/zzez;->zzhg:J

    .line 6
    iput-wide v0, p0, Lcom/google/android/gms/internal/drive/zzez;->zzhh:J

    return-void
.end method

.method private final setSequenceNumber(J)V
    .registers 4

    .line 11
    iget v0, p0, Lcom/google/android/gms/internal/drive/zzez;->zzhd:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/drive/zzez;->zzhd:I

    .line 12
    iput-wide p1, p0, Lcom/google/android/gms/internal/drive/zzez;->zzhf:J

    return-void
.end method

.method private final zza(J)V
    .registers 4

    .line 14
    iget v0, p0, Lcom/google/android/gms/internal/drive/zzez;->zzhd:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/drive/zzez;->zzhd:I

    .line 15
    iput-wide p1, p0, Lcom/google/android/gms/internal/drive/zzez;->zzhg:J

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/drive/zzez;I)V
    .registers 2

    const/4 p1, 0x1

    .line 42
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/drive/zzez;->zzj(I)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/drive/zzez;J)V
    .registers 3

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/drive/zzez;->setSequenceNumber(J)V

    return-void
.end method

.method public static zzaj()Lcom/google/android/gms/internal/drive/zzez$zza;
    .registers 1

    .line 20
    sget-object v0, Lcom/google/android/gms/internal/drive/zzez;->zzhj:Lcom/google/android/gms/internal/drive/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/drive/zzkk;->zzcw()Lcom/google/android/gms/internal/drive/zzkk$zza;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/drive/zzez$zza;

    return-object v0
.end method

.method static synthetic zzak()Lcom/google/android/gms/internal/drive/zzez;
    .registers 1

    .line 41
    sget-object v0, Lcom/google/android/gms/internal/drive/zzez;->zzhj:Lcom/google/android/gms/internal/drive/zzez;

    return-object v0
.end method

.method private final zzb(J)V
    .registers 4

    .line 17
    iget v0, p0, Lcom/google/android/gms/internal/drive/zzez;->zzhd:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/drive/zzez;->zzhd:I

    .line 18
    iput-wide p1, p0, Lcom/google/android/gms/internal/drive/zzez;->zzhh:J

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/drive/zzez;J)V
    .registers 3

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/drive/zzez;->zza(J)V

    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/drive/zzez;J)V
    .registers 3

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/drive/zzez;->zzb(J)V

    return-void
.end method

.method private final zzj(I)V
    .registers 3

    .line 8
    iget v0, p0, Lcom/google/android/gms/internal/drive/zzez;->zzhd:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/drive/zzez;->zzhd:I

    .line 9
    iput p1, p0, Lcom/google/android/gms/internal/drive/zzez;->zzhe:I

    return-void
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .line 21
    sget-object p3, Lcom/google/android/gms/internal/drive/zzfa;->zzhl:[I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    aget p1, p3, p1

    const/4 p3, 0x0

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_6c

    .line 40
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_11
    if-nez p2, :cond_14

    goto :goto_15

    :cond_14
    const/4 p3, 0x1

    :goto_15
    int-to-byte p1, p3

    .line 38
    iput-byte p1, p0, Lcom/google/android/gms/internal/drive/zzez;->zzhi:B

    return-object v1

    .line 37
    :pswitch_19
    iget-byte p1, p0, Lcom/google/android/gms/internal/drive/zzez;->zzhi:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 28
    :pswitch_20
    sget-object p1, Lcom/google/android/gms/internal/drive/zzez;->zzhk:Lcom/google/android/gms/internal/drive/zzmb;

    if-nez p1, :cond_39

    .line 30
    const-class p2, Lcom/google/android/gms/internal/drive/zzez;

    monitor-enter p2

    .line 31
    :try_start_27
    sget-object p1, Lcom/google/android/gms/internal/drive/zzez;->zzhk:Lcom/google/android/gms/internal/drive/zzmb;

    if-nez p1, :cond_34

    .line 33
    new-instance p1, Lcom/google/android/gms/internal/drive/zzkk$zzb;

    sget-object p3, Lcom/google/android/gms/internal/drive/zzez;->zzhj:Lcom/google/android/gms/internal/drive/zzez;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/drive/zzkk$zzb;-><init>(Lcom/google/android/gms/internal/drive/zzkk;)V

    .line 34
    sput-object p1, Lcom/google/android/gms/internal/drive/zzez;->zzhk:Lcom/google/android/gms/internal/drive/zzmb;

    .line 35
    :cond_34
    monitor-exit p2

    goto :goto_39

    :catchall_36
    move-exception p1

    monitor-exit p2
    :try_end_38
    .catchall {:try_start_27 .. :try_end_38} :catchall_36

    throw p1

    :cond_39
    :goto_39
    return-object p1

    .line 27
    :pswitch_3a
    sget-object p1, Lcom/google/android/gms/internal/drive/zzez;->zzhj:Lcom/google/android/gms/internal/drive/zzez;

    return-object p1

    :pswitch_3d
    const/4 p1, 0x5

    .line 24
    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "zzhd"

    aput-object p2, p1, p3

    const-string p2, "zzhe"

    aput-object p2, p1, v0

    const/4 p2, 0x2

    const-string p3, "zzhf"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzhg"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzhh"

    aput-object p3, p1, p2

    .line 26
    sget-object p2, Lcom/google/android/gms/internal/drive/zzez;->zzhj:Lcom/google/android/gms/internal/drive/zzez;

    const-string p3, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0004\u0001\u0504\u0000\u0002\u0510\u0001\u0003\u0510\u0002\u0004\u0510\u0003"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/drive/zzez;->zza(Lcom/google/android/gms/internal/drive/zzlq;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 23
    :pswitch_60
    new-instance p1, Lcom/google/android/gms/internal/drive/zzez$zza;

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/drive/zzez$zza;-><init>(Lcom/google/android/gms/internal/drive/zzfa;)V

    return-object p1

    .line 22
    :pswitch_66
    new-instance p1, Lcom/google/android/gms/internal/drive/zzez;

    invoke-direct {p1}, Lcom/google/android/gms/internal/drive/zzez;-><init>()V

    return-object p1

    :pswitch_data_6c
    .packed-switch 0x1
        :pswitch_66
        :pswitch_60
        :pswitch_3d
        :pswitch_3a
        :pswitch_20
        :pswitch_19
        :pswitch_11
    .end packed-switch
.end method