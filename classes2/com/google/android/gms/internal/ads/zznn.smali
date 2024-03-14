.class public final Lcom/google/android/gms/internal/ads/zznn;
.super Lcom/google/android/gms/internal/ads/zzhy;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# static fields
.field private static final zzbgp:Ljava/lang/Object;


# instance fields
.field private final zzais:Z

.field private final zzait:Z

.field private final zzbgq:J

.field private final zzbgr:J

.field private final zzbgs:J

.field private final zzbgt:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zznn;->zzbgp:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(JJJJZZ)V
    .registers 11

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhy;-><init>()V

    .line 4
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zznn;->zzbgq:J

    .line 5
    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zznn;->zzbgr:J

    const-wide/16 p1, 0x0

    .line 6
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zznn;->zzbgs:J

    .line 7
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zznn;->zzbgt:J

    .line 8
    iput-boolean p9, p0, Lcom/google/android/gms/internal/ads/zznn;->zzais:Z

    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zznn;->zzait:Z

    return-void
.end method

.method public constructor <init>(JZ)V
    .registers 15

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p1

    move v9, p3

    .line 1
    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/ads/zznn;-><init>(JJJJZZ)V

    return-void
.end method


# virtual methods
.method public final zza(ILcom/google/android/gms/internal/ads/zzia;Z)Lcom/google/android/gms/internal/ads/zzia;
    .registers 13

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 28
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzoz;->zzc(III)I

    if-eqz p3, :cond_a

    .line 29
    sget-object p1, Lcom/google/android/gms/internal/ads/zznn;->zzbgp:Ljava/lang/Object;

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    move-object v2, p1

    const/4 v3, 0x0

    .line 30
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zznn;->zzbgq:J

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-object v0, p2

    move-object v1, v2

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/zzia;->zza(Ljava/lang/Object;Ljava/lang/Object;IJJZ)Lcom/google/android/gms/internal/ads/zzia;

    move-result-object p1

    return-object p1
.end method

.method public final zza(ILcom/google/android/gms/internal/ads/zzid;ZJ)Lcom/google/android/gms/internal/ads/zzid;
    .registers 8

    const/4 p3, 0x0

    const/4 p4, 0x1

    .line 12
    invoke-static {p1, p3, p4}, Lcom/google/android/gms/internal/ads/zzoz;->zzc(III)I

    .line 14
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zznn;->zzais:Z

    iget-wide p4, p0, Lcom/google/android/gms/internal/ads/zznn;->zzbgr:J

    const/4 v0, 0x0

    .line 15
    iput-object v0, p2, Lcom/google/android/gms/internal/ads/zzid;->zzaig:Ljava/lang/Object;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 16
    iput-wide v0, p2, Lcom/google/android/gms/internal/ads/zzid;->zzaiq:J

    .line 17
    iput-wide v0, p2, Lcom/google/android/gms/internal/ads/zzid;->zzair:J

    .line 18
    iput-boolean p1, p2, Lcom/google/android/gms/internal/ads/zzid;->zzais:Z

    .line 19
    iput-boolean p3, p2, Lcom/google/android/gms/internal/ads/zzid;->zzait:Z

    const-wide/16 v0, 0x0

    .line 20
    iput-wide v0, p2, Lcom/google/android/gms/internal/ads/zzid;->zzaiw:J

    .line 21
    iput-wide p4, p2, Lcom/google/android/gms/internal/ads/zzid;->zzaih:J

    .line 22
    iput p3, p2, Lcom/google/android/gms/internal/ads/zzid;->zzaiu:I

    .line 23
    iput p3, p2, Lcom/google/android/gms/internal/ads/zzid;->zzaiv:I

    .line 24
    iput-wide v0, p2, Lcom/google/android/gms/internal/ads/zzid;->zzaix:J

    return-object p2
.end method

.method public final zzc(Ljava/lang/Object;)I
    .registers 3

    .line 31
    sget-object v0, Lcom/google/android/gms/internal/ads/zznn;->zzbgp:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    const/4 p1, 0x0

    return p1

    :cond_a
    const/4 p1, -0x1

    return p1
.end method

.method public final zzff()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final zzfg()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
