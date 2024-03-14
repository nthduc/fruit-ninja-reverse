.class public final Lcom/google/android/gms/internal/firebase_auth/zzp$zzo;
.super Lcom/google/android/gms/internal/firebase_auth/zzif;
.source "com.google.firebase:firebase-auth@@19.3.1"

# interfaces
.implements Lcom/google/android/gms/internal/firebase_auth/zzjp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/firebase_auth/zzp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/firebase_auth/zzp$zzo$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase_auth/zzif<",
        "Lcom/google/android/gms/internal/firebase_auth/zzp$zzo;",
        "Lcom/google/android/gms/internal/firebase_auth/zzp$zzo$zza;",
        ">;",
        "Lcom/google/android/gms/internal/firebase_auth/zzjp;"
    }
.end annotation


# static fields
.field private static final zzr:Lcom/google/android/gms/internal/firebase_auth/zzp$zzo;

.field private static volatile zzs:Lcom/google/android/gms/internal/firebase_auth/zzjx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase_auth/zzjx<",
            "Lcom/google/android/gms/internal/firebase_auth/zzp$zzo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:I

.field private zzd:Ljava/lang/String;

.field private zze:Ljava/lang/String;

.field private zzf:Ljava/lang/String;

.field private zzg:Ljava/lang/String;

.field private zzh:Lcom/google/android/gms/internal/firebase_auth/zzio;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase_auth/zzio<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzi:Ljava/lang/String;

.field private zzj:Lcom/google/android/gms/internal/firebase_auth/zzio;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase_auth/zzio<",
            "Lcom/google/android/gms/internal/firebase_auth/zzu;",
            ">;"
        }
    .end annotation
.end field

.field private zzk:Ljava/lang/String;

.field private zzl:Ljava/lang/String;

.field private zzm:Ljava/lang/String;

.field private zzn:J

.field private zzo:Ljava/lang/String;

.field private zzp:Z

.field private zzq:B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 50
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzo;-><init>()V

    .line 51
    sput-object v0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzo;->zzr:Lcom/google/android/gms/internal/firebase_auth/zzp$zzo;

    .line 52
    const-class v1, Lcom/google/android/gms/internal/firebase_auth/zzp$zzo;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/firebase_auth/zzif;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/firebase_auth/zzif;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_auth/zzif;-><init>()V

    const/4 v0, 0x2

    .line 2
    iput-byte v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzo;->zzq:B

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzo;->zzd:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzo;->zze:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzo;->zzf:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzo;->zzg:Ljava/lang/String;

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzif;->zzac()Lcom/google/android/gms/internal/firebase_auth/zzio;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzo;->zzh:Lcom/google/android/gms/internal/firebase_auth/zzio;

    .line 8
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzo;->zzi:Ljava/lang/String;

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzo;->zzac()Lcom/google/android/gms/internal/firebase_auth/zzio;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzo;->zzj:Lcom/google/android/gms/internal/firebase_auth/zzio;

    .line 10
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzo;->zzk:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzo;->zzl:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzo;->zzm:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzo;->zzo:Ljava/lang/String;

    return-void
.end method

.method public static zzj()Lcom/google/android/gms/internal/firebase_auth/zzjx;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/firebase_auth/zzjx<",
            "Lcom/google/android/gms/internal/firebase_auth/zzp$zzo;",
            ">;"
        }
    .end annotation

    .line 44
    sget-object v0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzo;->zzr:Lcom/google/android/gms/internal/firebase_auth/zzp$zzo;

    .line 45
    sget v1, Lcom/google/android/gms/internal/firebase_auth/zzif$zzf;->zzg:I

    const/4 v2, 0x0

    .line 46
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/firebase_auth/zzif;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 47
    check-cast v0, Lcom/google/android/gms/internal/firebase_auth/zzjx;

    return-object v0
.end method

.method static synthetic zzk()Lcom/google/android/gms/internal/firebase_auth/zzp$zzo;
    .registers 1

    .line 49
    sget-object v0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzo;->zzr:Lcom/google/android/gms/internal/firebase_auth/zzp$zzo;

    return-object v0
.end method


# virtual methods
.method public final d_()Ljava/lang/String;
    .registers 2

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzo;->zzo:Ljava/lang/String;

    return-object v0
.end method

.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .line 24
    sget-object p3, Lcom/google/android/gms/internal/firebase_auth/zzo;->zza:[I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    aget p1, p3, p1

    const/4 p3, 0x0

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_a6

    .line 43
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

    .line 41
    iput-byte p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzo;->zzq:B

    return-object v1

    .line 40
    :pswitch_19
    iget-byte p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzo;->zzq:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 31
    :pswitch_20
    sget-object p1, Lcom/google/android/gms/internal/firebase_auth/zzp$zzo;->zzs:Lcom/google/android/gms/internal/firebase_auth/zzjx;

    if-nez p1, :cond_39

    .line 33
    const-class p2, Lcom/google/android/gms/internal/firebase_auth/zzp$zzo;

    monitor-enter p2

    .line 34
    :try_start_27
    sget-object p1, Lcom/google/android/gms/internal/firebase_auth/zzp$zzo;->zzs:Lcom/google/android/gms/internal/firebase_auth/zzjx;

    if-nez p1, :cond_34

    .line 36
    new-instance p1, Lcom/google/android/gms/internal/firebase_auth/zzif$zzc;

    sget-object p3, Lcom/google/android/gms/internal/firebase_auth/zzp$zzo;->zzr:Lcom/google/android/gms/internal/firebase_auth/zzp$zzo;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/firebase_auth/zzif$zzc;-><init>(Lcom/google/android/gms/internal/firebase_auth/zzif;)V

    .line 37
    sput-object p1, Lcom/google/android/gms/internal/firebase_auth/zzp$zzo;->zzs:Lcom/google/android/gms/internal/firebase_auth/zzjx;

    .line 38
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

    .line 30
    :pswitch_3a
    sget-object p1, Lcom/google/android/gms/internal/firebase_auth/zzp$zzo;->zzr:Lcom/google/android/gms/internal/firebase_auth/zzp$zzo;

    return-object p1

    :pswitch_3d
    const/16 p1, 0xf

    .line 27
    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "zzc"

    aput-object p2, p1, p3

    const-string p2, "zzd"

    aput-object p2, p1, v0

    const/4 p2, 0x2

    const-string p3, "zze"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzf"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzg"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzh"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "zzi"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzj"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-class p3, Lcom/google/android/gms/internal/firebase_auth/zzu;

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "zzk"

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-string p3, "zzl"

    aput-object p3, p1, p2

    const/16 p2, 0xb

    const-string p3, "zzm"

    aput-object p3, p1, p2

    const/16 p2, 0xc

    const-string p3, "zzn"

    aput-object p3, p1, p2

    const/16 p2, 0xd

    const-string p3, "zzo"

    aput-object p3, p1, p2

    const/16 p2, 0xe

    const-string p3, "zzp"

    aput-object p3, p1, p2

    .line 29
    sget-object p2, Lcom/google/android/gms/internal/firebase_auth/zzp$zzo;->zzr:Lcom/google/android/gms/internal/firebase_auth/zzp$zzo;

    const-string p3, "\u0001\r\u0000\u0001\u0001\r\r\u0000\u0002\u0001\u0001\u1508\u0000\u0002\u1008\u0001\u0003\u1008\u0002\u0004\u1008\u0003\u0005\u001a\u0006\u1008\u0004\u0007\u001b\u0008\u1008\u0005\t\u1008\u0006\n\u1008\u0007\u000b\u1002\u0008\u000c\u1008\t\r\u1007\n"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzo;->zza(Lcom/google/android/gms/internal/firebase_auth/zzjn;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 26
    :pswitch_9a
    new-instance p1, Lcom/google/android/gms/internal/firebase_auth/zzp$zzo$zza;

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzo$zza;-><init>(Lcom/google/android/gms/internal/firebase_auth/zzo;)V

    return-object p1

    .line 25
    :pswitch_a0
    new-instance p1, Lcom/google/android/gms/internal/firebase_auth/zzp$zzo;

    invoke-direct {p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzo;-><init>()V

    return-object p1

    :pswitch_data_a6
    .packed-switch 0x1
        :pswitch_a0
        :pswitch_9a
        :pswitch_3d
        :pswitch_3a
        :pswitch_20
        :pswitch_19
        :pswitch_11
    .end packed-switch
.end method

.method public final zza()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzo;->zzf:Ljava/lang/String;

    return-object v0
.end method

.method public final zzb()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzo;->zzg:Ljava/lang/String;

    return-object v0
.end method

.method public final zzc()Ljava/lang/String;
    .registers 2

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzo;->zzi:Ljava/lang/String;

    return-object v0
.end method

.method public final zzd()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/firebase_auth/zzu;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzo;->zzj:Lcom/google/android/gms/internal/firebase_auth/zzio;

    return-object v0
.end method

.method public final zze()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzo;->zzl:Ljava/lang/String;

    return-object v0
.end method

.method public final zzf()Ljava/lang/String;
    .registers 2

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzo;->zzm:Ljava/lang/String;

    return-object v0
.end method

.method public final zzg()J
    .registers 3

    .line 21
    iget-wide v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzo;->zzn:J

    return-wide v0
.end method

.method public final zzi()Z
    .registers 2

    .line 23
    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzo;->zzp:Z

    return v0
.end method
