.class public Lcom/google/android/gms/internal/ads/zzejz$zzb;
.super Lcom/google/android/gms/internal/ads/zzeie;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzejz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/ads/zzejz<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/ads/zzejz$zzb<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/ads/zzeie<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field private final zzijg:Lcom/google/android/gms/internal/ads/zzejz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field protected zzijh:Lcom/google/android/gms/internal/ads/zzejz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field protected zziji:Z


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/ads/zzejz;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzeie;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zzijg:Lcom/google/android/gms/internal/ads/zzejz;

    .line 3
    sget v0, Lcom/google/android/gms/internal/ads/zzejz$zze;->zzijn:I

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p1, v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzejz;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 6
    check-cast p1, Lcom/google/android/gms/internal/ads/zzejz;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zzijh:Lcom/google/android/gms/internal/ads/zzejz;

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zziji:Z

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/ads/zzejz;Lcom/google/android/gms/internal/ads/zzejz;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;TMessageType;)V"
        }
    .end annotation

    .line 35
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzely;->zzbic()Lcom/google/android/gms/internal/ads/zzely;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzely;->zzaw(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzemf;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzemf;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private final zzb(Lcom/google/android/gms/internal/ads/zzeja;Lcom/google/android/gms/internal/ads/zzejm;)Lcom/google/android/gms/internal/ads/zzejz$zzb;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzeja;",
            "Lcom/google/android/gms/internal/ads/zzejm;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zziji:Z

    if-eqz v0, :cond_a

    .line 51
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zzbgp()V

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zziji:Z

    .line 53
    :cond_a
    :try_start_a
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzely;->zzbic()Lcom/google/android/gms/internal/ads/zzely;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zzijh:Lcom/google/android/gms/internal/ads/zzejz;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzely;->zzaw(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzemf;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zzijh:Lcom/google/android/gms/internal/ads/zzejz;

    .line 54
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzejh;->zza(Lcom/google/android/gms/internal/ads/zzeja;)Lcom/google/android/gms/internal/ads/zzejh;

    move-result-object p1

    .line 55
    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzemf;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzelz;Lcom/google/android/gms/internal/ads/zzejm;)V
    :try_end_1d
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_1d} :catch_1e

    return-object p0

    :catch_1e
    move-exception p1

    .line 58
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Ljava/io/IOException;

    if-eqz p2, :cond_2e

    .line 59
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/io/IOException;

    throw p1

    .line 60
    :cond_2e
    throw p1
.end method

.method private final zzb([BIILcom/google/android/gms/internal/ads/zzejm;)Lcom/google/android/gms/internal/ads/zzejz$zzb;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lcom/google/android/gms/internal/ads/zzejm;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzekj;
        }
    .end annotation

    .line 38
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zziji:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_a

    .line 39
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zzbgp()V

    .line 40
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zziji:Z

    .line 41
    :cond_a
    :try_start_a
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzely;->zzbic()Lcom/google/android/gms/internal/ads/zzely;

    move-result-object p2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zzijh:Lcom/google/android/gms/internal/ads/zzejz;

    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/ads/zzely;->zzaw(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzemf;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zzijh:Lcom/google/android/gms/internal/ads/zzejz;

    const/4 v5, 0x0

    add-int/lit8 v6, p3, 0x0

    new-instance v7, Lcom/google/android/gms/internal/ads/zzeik;

    invoke-direct {v7, p4}, Lcom/google/android/gms/internal/ads/zzeik;-><init>(Lcom/google/android/gms/internal/ads/zzejm;)V

    move-object v4, p1

    invoke-interface/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzemf;->zza(Ljava/lang/Object;[BIILcom/google/android/gms/internal/ads/zzeik;)V
    :try_end_22
    .catch Lcom/google/android/gms/internal/ads/zzekj; {:try_start_a .. :try_end_22} :catch_31
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a .. :try_end_22} :catch_2c
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_22} :catch_23

    return-object p0

    :catch_23
    move-exception p1

    .line 47
    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "Reading from byte array should not throw IOException."

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 45
    :catch_2c
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzekj;->zzbgx()Lcom/google/android/gms/internal/ads/zzekj;

    move-result-object p1

    throw p1

    :catch_31
    move-exception p1

    .line 43
    throw p1
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zzijg:Lcom/google/android/gms/internal/ads/zzejz;

    .line 76
    check-cast v0, Lcom/google/android/gms/internal/ads/zzejz;

    .line 77
    sget v1, Lcom/google/android/gms/internal/ads/zzejz$zze;->zzijo:I

    const/4 v2, 0x0

    .line 78
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzejz;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 79
    check-cast v0, Lcom/google/android/gms/internal/ads/zzejz$zzb;

    .line 81
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zzbgs()Lcom/google/android/gms/internal/ads/zzelj;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzejz;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zzb(Lcom/google/android/gms/internal/ads/zzejz;)Lcom/google/android/gms/internal/ads/zzejz$zzb;

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zzijh:Lcom/google/android/gms/internal/ads/zzejz;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzejz;->zza(Lcom/google/android/gms/internal/ads/zzejz;Z)Z

    move-result v0

    return v0
.end method

.method protected final synthetic zza(Lcom/google/android/gms/internal/ads/zzeif;)Lcom/google/android/gms/internal/ads/zzeie;
    .registers 2

    .line 62
    check-cast p1, Lcom/google/android/gms/internal/ads/zzejz;

    .line 63
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zzb(Lcom/google/android/gms/internal/ads/zzejz;)Lcom/google/android/gms/internal/ads/zzejz$zzb;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzeja;Lcom/google/android/gms/internal/ads/zzejm;)Lcom/google/android/gms/internal/ads/zzeie;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zzb(Lcom/google/android/gms/internal/ads/zzeja;Lcom/google/android/gms/internal/ads/zzejm;)Lcom/google/android/gms/internal/ads/zzejz$zzb;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic zza([BIILcom/google/android/gms/internal/ads/zzejm;)Lcom/google/android/gms/internal/ads/zzeie;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzekj;
        }
    .end annotation

    const/4 p2, 0x0

    .line 65
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zzb([BIILcom/google/android/gms/internal/ads/zzejm;)Lcom/google/android/gms/internal/ads/zzejz$zzb;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzejz;)Lcom/google/android/gms/internal/ads/zzejz$zzb;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation

    .line 30
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zziji:Z

    if-eqz v0, :cond_a

    .line 31
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zzbgp()V

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zziji:Z

    .line 33
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zzijh:Lcom/google/android/gms/internal/ads/zzejz;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zza(Lcom/google/android/gms/internal/ads/zzejz;Lcom/google/android/gms/internal/ads/zzejz;)V

    return-object p0
.end method

.method public final synthetic zzbdv()Lcom/google/android/gms/internal/ads/zzeie;
    .registers 2

    .line 67
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeie;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzejz$zzb;

    return-object v0
.end method

.method public final synthetic zzbgn()Lcom/google/android/gms/internal/ads/zzelj;
    .registers 2

    .line 71
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zzijg:Lcom/google/android/gms/internal/ads/zzejz;

    return-object v0
.end method

.method protected zzbgp()V
    .registers 4

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zzijh:Lcom/google/android/gms/internal/ads/zzejz;

    sget v1, Lcom/google/android/gms/internal/ads/zzejz$zze;->zzijn:I

    const/4 v2, 0x0

    .line 11
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzejz;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 12
    check-cast v0, Lcom/google/android/gms/internal/ads/zzejz;

    .line 13
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zzijh:Lcom/google/android/gms/internal/ads/zzejz;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zza(Lcom/google/android/gms/internal/ads/zzejz;Lcom/google/android/gms/internal/ads/zzejz;)V

    .line 14
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zzijh:Lcom/google/android/gms/internal/ads/zzejz;

    return-void
.end method

.method public zzbgq()Lcom/google/android/gms/internal/ads/zzejz;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 17
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zziji:Z

    if-eqz v0, :cond_7

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zzijh:Lcom/google/android/gms/internal/ads/zzejz;

    return-object v0

    .line 19
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zzijh:Lcom/google/android/gms/internal/ads/zzejz;

    .line 20
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzely;->zzbic()Lcom/google/android/gms/internal/ads/zzely;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzely;->zzaw(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzemf;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzemf;->zzaj(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zziji:Z

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zzijh:Lcom/google/android/gms/internal/ads/zzejz;

    return-object v0
.end method

.method public final zzbgr()Lcom/google/android/gms/internal/ads/zzejz;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 23
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zzbgs()Lcom/google/android/gms/internal/ads/zzelj;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzejz;

    .line 24
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzejz;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_d

    return-object v0

    .line 26
    :cond_d
    new-instance v1, Lcom/google/android/gms/internal/ads/zzemy;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzemy;-><init>(Lcom/google/android/gms/internal/ads/zzelj;)V

    .line 27
    throw v1
.end method

.method public synthetic zzbgs()Lcom/google/android/gms/internal/ads/zzelj;
    .registers 2

    .line 68
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zzbgq()Lcom/google/android/gms/internal/ads/zzejz;

    move-result-object v0

    return-object v0
.end method

.method public synthetic zzbgt()Lcom/google/android/gms/internal/ads/zzelj;
    .registers 2

    .line 69
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zzbgr()Lcom/google/android/gms/internal/ads/zzejz;

    move-result-object v0

    return-object v0
.end method
