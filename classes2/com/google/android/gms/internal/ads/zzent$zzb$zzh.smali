.class public final Lcom/google/android/gms/internal/ads/zzent$zzb$zzh;
.super Lcom/google/android/gms/internal/ads/zzejz;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzell;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzent$zzb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzh"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzent$zzb$zzh$zzb;,
        Lcom/google/android/gms/internal/ads/zzent$zzb$zzh$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzejz<",
        "Lcom/google/android/gms/internal/ads/zzent$zzb$zzh;",
        "Lcom/google/android/gms/internal/ads/zzent$zzb$zzh$zzb;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzell;"
    }
.end annotation


# static fields
.field private static volatile zzel:Lcom/google/android/gms/internal/ads/zzelw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzelw<",
            "Lcom/google/android/gms/internal/ads/zzent$zzb$zzh;",
            ">;"
        }
    .end annotation
.end field

.field private static final zziti:Lcom/google/android/gms/internal/ads/zzent$zzb$zzh;


# instance fields
.field private zzdw:I

.field private zziqh:B

.field private zziqk:Ljava/lang/String;

.field private zzita:I

.field private zzitb:Lcom/google/android/gms/internal/ads/zzent$zzb$zzd;

.field private zzitc:Lcom/google/android/gms/internal/ads/zzent$zzb$zze;

.field private zzitd:I

.field private zzite:Lcom/google/android/gms/internal/ads/zzekf;

.field private zzitf:Ljava/lang/String;

.field private zzitg:I

.field private zzith:Lcom/google/android/gms/internal/ads/zzekk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzekk<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 60
    new-instance v0, Lcom/google/android/gms/internal/ads/zzent$zzb$zzh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzent$zzb$zzh;-><init>()V

    .line 61
    sput-object v0, Lcom/google/android/gms/internal/ads/zzent$zzb$zzh;->zziti:Lcom/google/android/gms/internal/ads/zzent$zzb$zzh;

    .line 62
    const-class v1, Lcom/google/android/gms/internal/ads/zzent$zzb$zzh;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzejz;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzejz;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzejz;-><init>()V

    const/4 v0, 0x2

    .line 2
    iput-byte v0, p0, Lcom/google/android/gms/internal/ads/zzent$zzb$zzh;->zziqh:B

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzent$zzb$zzh;->zziqk:Ljava/lang/String;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzent$zzb$zzh;->zzbgi()Lcom/google/android/gms/internal/ads/zzekf;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzent$zzb$zzh;->zzite:Lcom/google/android/gms/internal/ads/zzekf;

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzent$zzb$zzh;->zzitf:Ljava/lang/String;

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzejz;->zzbgk()Lcom/google/android/gms/internal/ads/zzekk;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzent$zzb$zzh;->zzith:Lcom/google/android/gms/internal/ads/zzekk;

    return-void
.end method

.method private final setId(I)V
    .registers 3

    .line 8
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzent$zzb$zzh;->zzdw:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzent$zzb$zzh;->zzdw:I

    .line 9
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzent$zzb$zzh;->zzita:I

    return-void
.end method

.method private final setUrl(Ljava/lang/String;)V
    .registers 3

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzent$zzb$zzh;->zzdw:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzent$zzb$zzh;->zzdw:I

    .line 14
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzent$zzb$zzh;->zziqk:Ljava/lang/String;

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzent$zzb$zzd;)V
    .registers 2

    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzent$zzb$zzh;->zzitb:Lcom/google/android/gms/internal/ads/zzent$zzb$zzd;

    .line 18
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzent$zzb$zzh;->zzdw:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzent$zzb$zzh;->zzdw:I

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzent$zzb$zzh$zza;)V
    .registers 2

    .line 20
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzent$zzb$zzh$zza;->zzv()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzent$zzb$zzh;->zzitg:I

    .line 21
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzent$zzb$zzh;->zzdw:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzent$zzb$zzh;->zzdw:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzent$zzb$zzh;I)V
    .registers 2

    .line 55
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzent$zzb$zzh;->setId(I)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzent$zzb$zzh;Lcom/google/android/gms/internal/ads/zzent$zzb$zzd;)V
    .registers 2

    .line 57
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzent$zzb$zzh;->zza(Lcom/google/android/gms/internal/ads/zzent$zzb$zzd;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzent$zzb$zzh;Lcom/google/android/gms/internal/ads/zzent$zzb$zzh$zza;)V
    .registers 2

    .line 58
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzent$zzb$zzh;->zza(Lcom/google/android/gms/internal/ads/zzent$zzb$zzh$zza;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzent$zzb$zzh;Ljava/lang/String;)V
    .registers 2

    .line 56
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzent$zzb$zzh;->setUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzent$zzb$zzh;Ljava/lang/String;)V
    .registers 2

    .line 59
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzent$zzb$zzh;->zzif(Ljava/lang/String;)V

    return-void
.end method

.method public static zzbka()Lcom/google/android/gms/internal/ads/zzent$zzb$zzh$zzb;
    .registers 1

    .line 32
    sget-object v0, Lcom/google/android/gms/internal/ads/zzent$zzb$zzh;->zziti:Lcom/google/android/gms/internal/ads/zzent$zzb$zzh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzejz;->zzbgf()Lcom/google/android/gms/internal/ads/zzejz$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzent$zzb$zzh$zzb;

    return-object v0
.end method

.method static synthetic zzbkb()Lcom/google/android/gms/internal/ads/zzent$zzb$zzh;
    .registers 1

    .line 54
    sget-object v0, Lcom/google/android/gms/internal/ads/zzent$zzb$zzh;->zziti:Lcom/google/android/gms/internal/ads/zzent$zzb$zzh;

    return-object v0
.end method

.method private final zzif(Ljava/lang/String;)V
    .registers 4

    .line 24
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzent$zzb$zzh;->zzith:Lcom/google/android/gms/internal/ads/zzekk;

    .line 27
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzekk;->zzbeb()Z

    move-result v1

    if-nez v1, :cond_11

    .line 29
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzejz;->zza(Lcom/google/android/gms/internal/ads/zzekk;)Lcom/google/android/gms/internal/ads/zzekk;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzent$zzb$zzh;->zzith:Lcom/google/android/gms/internal/ads/zzekk;

    .line 30
    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzent$zzb$zzh;->zzith:Lcom/google/android/gms/internal/ads/zzekk;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzekk;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final getUrl()Ljava/lang/String;
    .registers 2

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzent$zzb$zzh;->zziqk:Ljava/lang/String;

    return-object v0
.end method

.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .line 33
    sget-object p3, Lcom/google/android/gms/internal/ads/zzenv;->zzdv:[I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    aget p1, p3, p1

    const/4 p3, 0x0

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_90

    .line 53
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

    .line 51
    iput-byte p1, p0, Lcom/google/android/gms/internal/ads/zzent$zzb$zzh;->zziqh:B

    return-object v1

    .line 50
    :pswitch_19
    iget-byte p1, p0, Lcom/google/android/gms/internal/ads/zzent$zzb$zzh;->zziqh:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 41
    :pswitch_20
    sget-object p1, Lcom/google/android/gms/internal/ads/zzent$zzb$zzh;->zzel:Lcom/google/android/gms/internal/ads/zzelw;

    if-nez p1, :cond_39

    .line 43
    const-class p2, Lcom/google/android/gms/internal/ads/zzent$zzb$zzh;

    monitor-enter p2

    .line 44
    :try_start_27
    sget-object p1, Lcom/google/android/gms/internal/ads/zzent$zzb$zzh;->zzel:Lcom/google/android/gms/internal/ads/zzelw;

    if-nez p1, :cond_34

    .line 46
    new-instance p1, Lcom/google/android/gms/internal/ads/zzejz$zza;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzent$zzb$zzh;->zziti:Lcom/google/android/gms/internal/ads/zzent$zzb$zzh;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzejz$zza;-><init>(Lcom/google/android/gms/internal/ads/zzejz;)V

    .line 47
    sput-object p1, Lcom/google/android/gms/internal/ads/zzent$zzb$zzh;->zzel:Lcom/google/android/gms/internal/ads/zzelw;

    .line 48
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

    .line 40
    :pswitch_3a
    sget-object p1, Lcom/google/android/gms/internal/ads/zzent$zzb$zzh;->zziti:Lcom/google/android/gms/internal/ads/zzent$zzb$zzh;

    return-object p1

    :pswitch_3d
    const/16 p1, 0xb

    .line 36
    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "zzdw"

    aput-object p2, p1, p3

    const-string p2, "zzita"

    aput-object p2, p1, v0

    const/4 p2, 0x2

    const-string p3, "zziqk"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzitb"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzitc"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzitd"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "zzite"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzitf"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "zzitg"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    .line 37
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzent$zzb$zzh$zza;->zzw()Lcom/google/android/gms/internal/ads/zzekg;

    move-result-object p3

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-string p3, "zzith"

    aput-object p3, p1, p2

    .line 39
    sget-object p2, Lcom/google/android/gms/internal/ads/zzent$zzb$zzh;->zziti:Lcom/google/android/gms/internal/ads/zzent$zzb$zzh;

    const-string p3, "\u0001\t\u0000\u0001\u0001\t\t\u0000\u0002\u0003\u0001\u1504\u0000\u0002\u1008\u0001\u0003\u1409\u0002\u0004\u1409\u0003\u0005\u1004\u0004\u0006\u0016\u0007\u1008\u0005\u0008\u100c\u0006\t\u001a"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzent$zzb$zzh;->zza(Lcom/google/android/gms/internal/ads/zzelj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 35
    :pswitch_84
    new-instance p1, Lcom/google/android/gms/internal/ads/zzent$zzb$zzh$zzb;

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/ads/zzent$zzb$zzh$zzb;-><init>(Lcom/google/android/gms/internal/ads/zzenv;)V

    return-object p1

    .line 34
    :pswitch_8a
    new-instance p1, Lcom/google/android/gms/internal/ads/zzent$zzb$zzh;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzent$zzb$zzh;-><init>()V

    return-object p1

    :pswitch_data_90
    .packed-switch 0x1
        :pswitch_8a
        :pswitch_84
        :pswitch_3d
        :pswitch_3a
        :pswitch_20
        :pswitch_19
        :pswitch_11
    .end packed-switch
.end method

.method public final zzbjz()I
    .registers 2

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzent$zzb$zzh;->zzith:Lcom/google/android/gms/internal/ads/zzekk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzekk;->size()I

    move-result v0

    return v0
.end method
