.class public Lcom/google/android/gms/internal/ads/zzeae;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeab;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PrimitiveT:",
        "Ljava/lang/Object;",
        "KeyProtoT::",
        "Lcom/google/android/gms/internal/ads/zzelj;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzeab<",
        "TPrimitiveT;>;"
    }
.end annotation


# instance fields
.field private final zzhud:Lcom/google/android/gms/internal/ads/zzeag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzeag<",
            "TKeyProtoT;>;"
        }
    .end annotation
.end field

.field private final zzhue:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TPrimitiveT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzeag;Ljava/lang/Class;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzeag<",
            "TKeyProtoT;>;",
            "Ljava/lang/Class<",
            "TPrimitiveT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeag;->zzayp()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    const-class v0, Ljava/lang/Void;

    .line 3
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_33

    .line 4
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x1

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, p1

    const-string p1, "Given internalKeyMananger %s does not support primitive class %s"

    .line 6
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_33
    :goto_33
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeae;->zzhud:Lcom/google/android/gms/internal/ads/zzeag;

    .line 8
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeae;->zzhue:Ljava/lang/Class;

    return-void
.end method

.method private final zzayl()Lcom/google/android/gms/internal/ads/zzead;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzead<",
            "*TKeyProtoT;>;"
        }
    .end annotation

    .line 44
    new-instance v0, Lcom/google/android/gms/internal/ads/zzead;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeae;->zzhud:Lcom/google/android/gms/internal/ads/zzeag;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzeag;->zzayr()Lcom/google/android/gms/internal/ads/zzeaf;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzead;-><init>(Lcom/google/android/gms/internal/ads/zzeaf;)V

    return-object v0
.end method

.method private final zzb(Lcom/google/android/gms/internal/ads/zzelj;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKeyProtoT;)TPrimitiveT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 40
    const-class v0, Ljava/lang/Void;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeae;->zzhue:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 42
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeae;->zzhud:Lcom/google/android/gms/internal/ads/zzeag;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzeag;->zze(Lcom/google/android/gms/internal/ads/zzelj;)V

    .line 43
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeae;->zzhud:Lcom/google/android/gms/internal/ads/zzeag;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeae;->zzhue:Ljava/lang/Class;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzeag;->zza(Lcom/google/android/gms/internal/ads/zzelj;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 41
    :cond_18
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "Cannot create a primitive for Void"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final getKeyType()Ljava/lang/String;
    .registers 2

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeae;->zzhud:Lcom/google/android/gms/internal/ads/zzeag;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeag;->getKeyType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzelj;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzelj;",
            ")TPrimitiveT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeae;->zzhud:Lcom/google/android/gms/internal/ads/zzeag;

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeag;->zzayn()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "Expected proto of type "

    if-eqz v1, :cond_1b

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_20

    :cond_1b
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_20
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeae;->zzhud:Lcom/google/android/gms/internal/ads/zzeag;

    .line 17
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzeag;->zzayn()Ljava/lang/Class;

    move-result-object v1

    .line 19
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 22
    check-cast p1, Lcom/google/android/gms/internal/ads/zzelj;

    .line 23
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzeae;->zzb(Lcom/google/android/gms/internal/ads/zzelj;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 20
    :cond_33
    new-instance p1, Ljava/security/GeneralSecurityException;

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzayk()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TPrimitiveT;>;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeae;->zzhue:Ljava/lang/Class;

    return-object v0
.end method

.method public final zzm(Lcom/google/android/gms/internal/ads/zzeip;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzeip;",
            ")TPrimitiveT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeae;->zzhud:Lcom/google/android/gms/internal/ads/zzeag;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzeag;->zzr(Lcom/google/android/gms/internal/ads/zzeip;)Lcom/google/android/gms/internal/ads/zzelj;

    move-result-object p1

    .line 11
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzeae;->zzb(Lcom/google/android/gms/internal/ads/zzelj;)Ljava/lang/Object;

    move-result-object p1
    :try_end_a
    .catch Lcom/google/android/gms/internal/ads/zzekj; {:try_start_0 .. :try_end_a} :catch_b

    return-object p1

    :catch_b
    move-exception p1

    .line 13
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Failures parsing proto of type "

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeae;->zzhud:Lcom/google/android/gms/internal/ads/zzeag;

    .line 14
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzeag;->zzayn()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_29

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2f

    :cond_29
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_2f
    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final zzn(Lcom/google/android/gms/internal/ads/zzeip;)Lcom/google/android/gms/internal/ads/zzelj;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 24
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzeae;->zzayl()Lcom/google/android/gms/internal/ads/zzead;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzead;->zzp(Lcom/google/android/gms/internal/ads/zzeip;)Lcom/google/android/gms/internal/ads/zzelj;

    move-result-object p1
    :try_end_8
    .catch Lcom/google/android/gms/internal/ads/zzekj; {:try_start_0 .. :try_end_8} :catch_9

    return-object p1

    :catch_9
    move-exception p1

    .line 26
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Failures parsing proto of type "

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeae;->zzhud:Lcom/google/android/gms/internal/ads/zzeag;

    .line 27
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzeag;->zzayr()Lcom/google/android/gms/internal/ads/zzeaf;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzeaf;->zzaym()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2b

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_31

    :cond_2b
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_31
    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final zzo(Lcom/google/android/gms/internal/ads/zzeip;)Lcom/google/android/gms/internal/ads/zzefb;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 29
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzeae;->zzayl()Lcom/google/android/gms/internal/ads/zzead;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzead;->zzp(Lcom/google/android/gms/internal/ads/zzeip;)Lcom/google/android/gms/internal/ads/zzelj;

    move-result-object p1

    .line 30
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzefb;->zzbbw()Lcom/google/android/gms/internal/ads/zzefb$zzb;

    move-result-object v0

    .line 31
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeae;->zzhud:Lcom/google/android/gms/internal/ads/zzeag;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzeag;->getKeyType()Ljava/lang/String;

    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzefb$zzb;->zzhq(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzefb$zzb;

    move-result-object v0

    .line 33
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzelj;->zzbdw()Lcom/google/android/gms/internal/ads/zzeip;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzefb$zzb;->zzaf(Lcom/google/android/gms/internal/ads/zzeip;)Lcom/google/android/gms/internal/ads/zzefb$zzb;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeae;->zzhud:Lcom/google/android/gms/internal/ads/zzeag;

    .line 34
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeag;->zzayo()Lcom/google/android/gms/internal/ads/zzefb$zza;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzefb$zzb;->zzb(Lcom/google/android/gms/internal/ads/zzefb$zza;)Lcom/google/android/gms/internal/ads/zzefb$zzb;

    move-result-object p1

    .line 35
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zzbgt()Lcom/google/android/gms/internal/ads/zzelj;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzejz;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzefb;
    :try_end_30
    .catch Lcom/google/android/gms/internal/ads/zzekj; {:try_start_0 .. :try_end_30} :catch_31

    return-object p1

    :catch_31
    move-exception p1

    .line 38
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Unexpected proto"

    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
