.class final Lcom/google/android/gms/internal/ads/zzemh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"


# static fields
.field private static final zzinc:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final zzind:Lcom/google/android/gms/internal/ads/zzemx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzemx<",
            "**>;"
        }
    .end annotation
.end field

.field private static final zzine:Lcom/google/android/gms/internal/ads/zzemx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzemx<",
            "**>;"
        }
    .end annotation
.end field

.field private static final zzinf:Lcom/google/android/gms/internal/ads/zzemx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzemx<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 320
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzemh;->zzbik()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzemh;->zzinc:Ljava/lang/Class;

    const/4 v0, 0x0

    .line 322
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzemh;->zzbv(Z)Lcom/google/android/gms/internal/ads/zzemx;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzemh;->zzind:Lcom/google/android/gms/internal/ads/zzemx;

    const/4 v0, 0x1

    .line 324
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzemh;->zzbv(Z)Lcom/google/android/gms/internal/ads/zzemx;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzemh;->zzine:Lcom/google/android/gms/internal/ads/zzemx;

    .line 325
    new-instance v0, Lcom/google/android/gms/internal/ads/zzemz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzemz;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzemh;->zzinf:Lcom/google/android/gms/internal/ads/zzemx;

    return-void
.end method

.method static zza(IILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzemx;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(IITUB;",
            "Lcom/google/android/gms/internal/ads/zzemx<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    if-nez p2, :cond_6

    .line 317
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzemx;->zzbiu()Ljava/lang/Object;

    move-result-object p2

    :cond_6
    int-to-long v0, p1

    .line 318
    invoke-virtual {p3, p2, p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzemx;->zza(Ljava/lang/Object;IJ)V

    return-object p2
.end method

.method static zza(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzekg;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzemx;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzekg;",
            "TUB;",
            "Lcom/google/android/gms/internal/ads/zzemx<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    if-nez p2, :cond_3

    return-object p3

    .line 295
    :cond_3
    instance-of v0, p1, Ljava/util/RandomAccess;

    if-eqz v0, :cond_3d

    .line 297
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move-object v2, p3

    const/4 p3, 0x0

    :goto_e
    if-ge v1, v0, :cond_33

    .line 299
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 300
    invoke-interface {p2, v3}, Lcom/google/android/gms/internal/ads/zzekg;->zzi(I)Z

    move-result v4

    if-eqz v4, :cond_2c

    if-eq v1, p3, :cond_29

    .line 302
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, p3, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_29
    add-int/lit8 p3, p3, 0x1

    goto :goto_30

    .line 304
    :cond_2c
    invoke-static {p0, v3, v2, p4}, Lcom/google/android/gms/internal/ads/zzemh;->zza(IILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzemx;)Ljava/lang/Object;

    move-result-object v2

    :goto_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_33
    if-eq p3, v0, :cond_60

    .line 307
    invoke-interface {p1, p3, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    goto :goto_60

    .line 309
    :cond_3d
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_41
    move-object v2, p3

    :cond_42
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_60

    .line 310
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 311
    invoke-interface {p2, p3}, Lcom/google/android/gms/internal/ads/zzekg;->zzi(I)Z

    move-result v0

    if-nez v0, :cond_42

    .line 312
    invoke-static {p0, p3, v2, p4}, Lcom/google/android/gms/internal/ads/zzemh;->zza(IILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzemx;)Ljava/lang/Object;

    move-result-object p3

    .line 313
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_41

    :cond_60
    :goto_60
    return-object v2
.end method

.method public static zza(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzenu;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzenu;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 47
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 48
    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/ads/zzenu;->zza(ILjava/util/List;)V

    :cond_b
    return-void
.end method

.method public static zza(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzenu;Lcom/google/android/gms/internal/ads/zzemf;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;",
            "Lcom/google/android/gms/internal/ads/zzenu;",
            "Lcom/google/android/gms/internal/ads/zzemf;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 53
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 54
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/ads/zzenu;->zza(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzemf;)V

    :cond_b
    return-void
.end method

.method public static zza(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzenu;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzenu;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 5
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 6
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/ads/zzenu;->zzg(ILjava/util/List;Z)V

    :cond_b
    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/ads/zzejo;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "FT::",
            "Lcom/google/android/gms/internal/ads/zzeju<",
            "TFT;>;>(",
            "Lcom/google/android/gms/internal/ads/zzejo<",
            "TFT;>;TT;TT;)V"
        }
    .end annotation

    .line 281
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzejo;->zzah(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzejs;

    move-result-object p2

    .line 283
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzejs;->zzigh:Lcom/google/android/gms/internal/ads/zzemk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzemk;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    .line 285
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzejo;->zzai(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzejs;

    move-result-object p0

    .line 286
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzejs;->zza(Lcom/google/android/gms/internal/ads/zzejs;)V

    :cond_13
    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/ads/zzelg;Ljava/lang/Object;Ljava/lang/Object;J)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/zzelg;",
            "TT;TT;J)V"
        }
    .end annotation

    .line 277
    invoke-static {p1, p3, p4}, Lcom/google/android/gms/internal/ads/zzend;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzend;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    .line 278
    invoke-interface {p0, v0, p2}, Lcom/google/android/gms/internal/ads/zzelg;->zzf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 279
    invoke-static {p1, p3, p4, p0}, Lcom/google/android/gms/internal/ads/zzend;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/ads/zzemx;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/zzemx<",
            "TUT;TUB;>;TT;TT;)V"
        }
    .end annotation

    .line 288
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzemx;->zzax(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 289
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzemx;->zzax(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 290
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/ads/zzemx;->zzk(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 291
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzemx;->zzi(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static zzab(Ljava/util/List;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    .line 59
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 63
    :cond_8
    instance-of v2, p0, Lcom/google/android/gms/internal/ads/zzekx;

    if-eqz v2, :cond_1d

    .line 64
    check-cast p0, Lcom/google/android/gms/internal/ads/zzekx;

    const/4 v2, 0x0

    :goto_f
    if-ge v1, v0, :cond_32

    .line 66
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzekx;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzejj;->zzfl(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_1d
    const/4 v2, 0x0

    :goto_1e
    if-ge v1, v0, :cond_32

    .line 70
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzejj;->zzfl(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_32
    return v2
.end method

.method static zzac(Ljava/util/List;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    .line 78
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 82
    :cond_8
    instance-of v2, p0, Lcom/google/android/gms/internal/ads/zzekx;

    if-eqz v2, :cond_1d

    .line 83
    check-cast p0, Lcom/google/android/gms/internal/ads/zzekx;

    const/4 v2, 0x0

    :goto_f
    if-ge v1, v0, :cond_32

    .line 85
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzekx;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzejj;->zzfm(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_1d
    const/4 v2, 0x0

    :goto_1e
    if-ge v1, v0, :cond_32

    .line 89
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzejj;->zzfm(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_32
    return v2
.end method

.method static zzad(Ljava/util/List;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    .line 97
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 101
    :cond_8
    instance-of v2, p0, Lcom/google/android/gms/internal/ads/zzekx;

    if-eqz v2, :cond_1d

    .line 102
    check-cast p0, Lcom/google/android/gms/internal/ads/zzekx;

    const/4 v2, 0x0

    :goto_f
    if-ge v1, v0, :cond_32

    .line 104
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzekx;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzejj;->zzfn(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_1d
    const/4 v2, 0x0

    :goto_1e
    if-ge v1, v0, :cond_32

    .line 108
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzejj;->zzfn(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_32
    return v2
.end method

.method static zzae(Ljava/util/List;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 116
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 120
    :cond_8
    instance-of v2, p0, Lcom/google/android/gms/internal/ads/zzekc;

    if-eqz v2, :cond_1d

    .line 121
    check-cast p0, Lcom/google/android/gms/internal/ads/zzekc;

    const/4 v2, 0x0

    :goto_f
    if-ge v1, v0, :cond_32

    .line 123
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzekc;->getInt(I)I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzejj;->zzgw(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_1d
    const/4 v2, 0x0

    :goto_1e
    if-ge v1, v0, :cond_32

    .line 127
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzejj;->zzgw(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_32
    return v2
.end method

.method static zzaf(Ljava/util/List;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 135
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 139
    :cond_8
    instance-of v2, p0, Lcom/google/android/gms/internal/ads/zzekc;

    if-eqz v2, :cond_1d

    .line 140
    check-cast p0, Lcom/google/android/gms/internal/ads/zzekc;

    const/4 v2, 0x0

    :goto_f
    if-ge v1, v0, :cond_32

    .line 142
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzekc;->getInt(I)I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzejj;->zzgr(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_1d
    const/4 v2, 0x0

    :goto_1e
    if-ge v1, v0, :cond_32

    .line 146
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzejj;->zzgr(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_32
    return v2
.end method

.method static zzag(Ljava/util/List;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 154
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 158
    :cond_8
    instance-of v2, p0, Lcom/google/android/gms/internal/ads/zzekc;

    if-eqz v2, :cond_1d

    .line 159
    check-cast p0, Lcom/google/android/gms/internal/ads/zzekc;

    const/4 v2, 0x0

    :goto_f
    if-ge v1, v0, :cond_32

    .line 161
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzekc;->getInt(I)I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzejj;->zzgs(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_1d
    const/4 v2, 0x0

    :goto_1e
    if-ge v1, v0, :cond_32

    .line 165
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzejj;->zzgs(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_32
    return v2
.end method

.method static zzah(Ljava/util/List;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 173
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 177
    :cond_8
    instance-of v2, p0, Lcom/google/android/gms/internal/ads/zzekc;

    if-eqz v2, :cond_1d

    .line 178
    check-cast p0, Lcom/google/android/gms/internal/ads/zzekc;

    const/4 v2, 0x0

    :goto_f
    if-ge v1, v0, :cond_32

    .line 180
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzekc;->getInt(I)I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzejj;->zzgt(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_1d
    const/4 v2, 0x0

    :goto_1e
    if-ge v1, v0, :cond_32

    .line 184
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzejj;->zzgt(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_32
    return v2
.end method

.method static zzai(Ljava/util/List;)I
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)I"
        }
    .end annotation

    .line 192
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    shl-int/lit8 p0, p0, 0x2

    return p0
.end method

.method static zzaj(Ljava/util/List;)I
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)I"
        }
    .end annotation

    .line 198
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    shl-int/lit8 p0, p0, 0x3

    return p0
.end method

.method static zzak(Ljava/util/List;)I
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)I"
        }
    .end annotation

    .line 204
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public static zzb(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzenu;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzeip;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzenu;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 50
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 51
    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/ads/zzenu;->zzb(ILjava/util/List;)V

    :cond_b
    return-void
.end method

.method public static zzb(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzenu;Lcom/google/android/gms/internal/ads/zzemf;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;",
            "Lcom/google/android/gms/internal/ads/zzenu;",
            "Lcom/google/android/gms/internal/ads/zzemf;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 56
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 57
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/ads/zzenu;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzemf;)V

    :cond_b
    return-void
.end method

.method public static zzb(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzenu;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzenu;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 8
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 9
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/ads/zzenu;->zzf(ILjava/util/List;Z)V

    :cond_b
    return-void
.end method

.method public static zzbih()Lcom/google/android/gms/internal/ads/zzemx;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzemx<",
            "**>;"
        }
    .end annotation

    .line 260
    sget-object v0, Lcom/google/android/gms/internal/ads/zzemh;->zzind:Lcom/google/android/gms/internal/ads/zzemx;

    return-object v0
.end method

.method public static zzbii()Lcom/google/android/gms/internal/ads/zzemx;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzemx<",
            "**>;"
        }
    .end annotation

    .line 261
    sget-object v0, Lcom/google/android/gms/internal/ads/zzemh;->zzine:Lcom/google/android/gms/internal/ads/zzemx;

    return-object v0
.end method

.method public static zzbij()Lcom/google/android/gms/internal/ads/zzemx;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzemx<",
            "**>;"
        }
    .end annotation

    .line 262
    sget-object v0, Lcom/google/android/gms/internal/ads/zzemh;->zzinf:Lcom/google/android/gms/internal/ads/zzemx;

    return-object v0
.end method

.method private static zzbik()Ljava/lang/Class;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    :try_start_0
    const-string v0, "com.google.protobuf.GeneratedMessage"

    .line 269
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    const/4 v0, 0x0

    return-object v0
.end method

.method private static zzbil()Ljava/lang/Class;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    :try_start_0
    const-string v0, "com.google.protobuf.UnknownFieldSetSchema"

    .line 272
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    const/4 v0, 0x0

    return-object v0
.end method

.method private static zzbv(Z)Lcom/google/android/gms/internal/ads/zzemx;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/android/gms/internal/ads/zzemx<",
            "**>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 263
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzemh;->zzbil()Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_8

    return-object v0

    :cond_8
    const/4 v2, 0x1

    .line 266
    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzemx;
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_22} :catch_23

    return-object p0

    :catch_23
    return-object v0
.end method

.method static zzc(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzemf;)I
    .registers 4

    .line 230
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzeks;

    if-eqz v0, :cond_b

    .line 231
    check-cast p1, Lcom/google/android/gms/internal/ads/zzeks;

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzejj;->zza(ILcom/google/android/gms/internal/ads/zzeks;)I

    move-result p0

    return p0

    .line 232
    :cond_b
    check-cast p1, Lcom/google/android/gms/internal/ads/zzelj;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzejj;->zzb(ILcom/google/android/gms/internal/ads/zzelj;Lcom/google/android/gms/internal/ads/zzemf;)I

    move-result p0

    return p0
.end method

.method static zzc(ILjava/util/List;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;)I"
        }
    .end annotation

    .line 210
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 213
    :cond_8
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzejj;->zzgq(I)I

    move-result p0

    mul-int p0, p0, v0

    .line 214
    instance-of v2, p1, Lcom/google/android/gms/internal/ads/zzeku;

    if-eqz v2, :cond_2f

    .line 215
    check-cast p1, Lcom/google/android/gms/internal/ads/zzeku;

    :goto_14
    if-ge v1, v0, :cond_4a

    .line 217
    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/zzeku;->zzhe(I)Ljava/lang/Object;

    move-result-object v2

    .line 218
    instance-of v3, v2, Lcom/google/android/gms/internal/ads/zzeip;

    if-eqz v3, :cond_25

    .line 219
    check-cast v2, Lcom/google/android/gms/internal/ads/zzeip;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzejj;->zzai(Lcom/google/android/gms/internal/ads/zzeip;)I

    move-result v2

    goto :goto_2b

    .line 220
    :cond_25
    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzejj;->zzhw(Ljava/lang/String;)I

    move-result v2

    :goto_2b
    add-int/2addr p0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_2f
    :goto_2f
    if-ge v1, v0, :cond_4a

    .line 224
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 225
    instance-of v3, v2, Lcom/google/android/gms/internal/ads/zzeip;

    if-eqz v3, :cond_40

    .line 226
    check-cast v2, Lcom/google/android/gms/internal/ads/zzeip;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzejj;->zzai(Lcom/google/android/gms/internal/ads/zzeip;)I

    move-result v2

    goto :goto_46

    .line 227
    :cond_40
    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzejj;->zzhw(Ljava/lang/String;)I

    move-result v2

    :goto_46
    add-int/2addr p0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    :cond_4a
    return p0
.end method

.method static zzc(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzemf;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;",
            "Lcom/google/android/gms/internal/ads/zzemf;",
            ")I"
        }
    .end annotation

    .line 233
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 236
    :cond_8
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzejj;->zzgq(I)I

    move-result p0

    mul-int p0, p0, v0

    :goto_e
    if-ge v1, v0, :cond_29

    .line 238
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 239
    instance-of v3, v2, Lcom/google/android/gms/internal/ads/zzeks;

    if-eqz v3, :cond_1f

    .line 240
    check-cast v2, Lcom/google/android/gms/internal/ads/zzeks;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzejj;->zza(Lcom/google/android/gms/internal/ads/zzeks;)I

    move-result v2

    goto :goto_25

    .line 241
    :cond_1f
    check-cast v2, Lcom/google/android/gms/internal/ads/zzelj;

    invoke-static {v2, p2}, Lcom/google/android/gms/internal/ads/zzejj;->zza(Lcom/google/android/gms/internal/ads/zzelj;Lcom/google/android/gms/internal/ads/zzemf;)I

    move-result v2

    :goto_25
    add-int/2addr p0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_29
    return p0
.end method

.method public static zzc(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzenu;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzenu;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 11
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 12
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/ads/zzenu;->zzc(ILjava/util/List;Z)V

    :cond_b
    return-void
.end method

.method static zzd(ILjava/util/List;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzeip;",
            ">;)I"
        }
    .end annotation

    .line 244
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 247
    :cond_8
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzejj;->zzgq(I)I

    move-result p0

    mul-int v0, v0, p0

    .line 248
    :goto_e
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v1, p0, :cond_22

    .line 249
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzeip;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzejj;->zzai(Lcom/google/android/gms/internal/ads/zzeip;)I

    move-result p0

    add-int/2addr v0, p0

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_22
    return v0
.end method

.method static zzd(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzemf;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzelj;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzemf;",
            ")I"
        }
    .end annotation

    .line 252
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    const/4 v2, 0x0

    :goto_9
    if-ge v1, v0, :cond_19

    .line 257
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzelj;

    invoke-static {p0, v3, p2}, Lcom/google/android/gms/internal/ads/zzejj;->zzc(ILcom/google/android/gms/internal/ads/zzelj;Lcom/google/android/gms/internal/ads/zzemf;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_19
    return v2
.end method

.method public static zzd(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzenu;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzenu;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 14
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 15
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/ads/zzenu;->zzd(ILjava/util/List;Z)V

    :cond_b
    return-void
.end method

.method public static zze(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzenu;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzenu;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 17
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 18
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/ads/zzenu;->zzn(ILjava/util/List;Z)V

    :cond_b
    return-void
.end method

.method public static zzf(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzenu;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzenu;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 20
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 21
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/ads/zzenu;->zze(ILjava/util/List;Z)V

    :cond_b
    return-void
.end method

.method public static zzg(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzenu;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzenu;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 23
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 24
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/ads/zzenu;->zzl(ILjava/util/List;Z)V

    :cond_b
    return-void
.end method

.method public static zzh(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzenu;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzenu;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 26
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 27
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/ads/zzenu;->zza(ILjava/util/List;Z)V

    :cond_b
    return-void
.end method

.method static zzh(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 2

    if-eq p0, p1, :cond_d

    if-eqz p0, :cond_b

    .line 275
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    return p0

    :cond_d
    :goto_d
    const/4 p0, 0x1

    return p0
.end method

.method public static zzi(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzenu;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzenu;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 29
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 30
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/ads/zzenu;->zzj(ILjava/util/List;Z)V

    :cond_b
    return-void
.end method

.method public static zzi(Ljava/lang/Class;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/zzejz;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1b

    sget-object v0, Lcom/google/android/gms/internal/ads/zzemh;->zzinc:Ljava/lang/Class;

    if-eqz v0, :cond_1b

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_13

    goto :goto_1b

    .line 3
    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Message classes must extend GeneratedMessage or GeneratedMessageLite"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1b
    :goto_1b
    return-void
.end method

.method public static zzj(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzenu;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzenu;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 32
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 33
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/ads/zzenu;->zzm(ILjava/util/List;Z)V

    :cond_b
    return-void
.end method

.method public static zzk(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzenu;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzenu;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 35
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 36
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/ads/zzenu;->zzb(ILjava/util/List;Z)V

    :cond_b
    return-void
.end method

.method public static zzl(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzenu;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzenu;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 38
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 39
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/ads/zzenu;->zzk(ILjava/util/List;Z)V

    :cond_b
    return-void
.end method

.method public static zzm(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzenu;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzenu;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 41
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 42
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/ads/zzenu;->zzh(ILjava/util/List;Z)V

    :cond_b
    return-void
.end method

.method public static zzn(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzenu;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzenu;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 44
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 45
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/ads/zzenu;->zzi(ILjava/util/List;Z)V

    :cond_b
    return-void
.end method

.method static zzo(ILjava/util/List;Z)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)I"
        }
    .end annotation

    .line 73
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_8

    const/4 p0, 0x0

    return p0

    .line 76
    :cond_8
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzemh;->zzab(Ljava/util/List;)I

    move-result p2

    .line 77
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzejj;->zzgq(I)I

    move-result p0

    mul-int p1, p1, p0

    add-int/2addr p2, p1

    return p2
.end method

.method static zzp(ILjava/util/List;Z)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)I"
        }
    .end annotation

    .line 92
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_8

    const/4 p0, 0x0

    return p0

    .line 95
    :cond_8
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzemh;->zzac(Ljava/util/List;)I

    move-result p1

    .line 96
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzejj;->zzgq(I)I

    move-result p0

    mul-int p2, p2, p0

    add-int/2addr p1, p2

    return p1
.end method

.method static zzq(ILjava/util/List;Z)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)I"
        }
    .end annotation

    .line 111
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_8

    const/4 p0, 0x0

    return p0

    .line 114
    :cond_8
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzemh;->zzad(Ljava/util/List;)I

    move-result p1

    .line 115
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzejj;->zzgq(I)I

    move-result p0

    mul-int p2, p2, p0

    add-int/2addr p1, p2

    return p1
.end method

.method static zzr(ILjava/util/List;Z)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)I"
        }
    .end annotation

    .line 130
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_8

    const/4 p0, 0x0

    return p0

    .line 133
    :cond_8
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzemh;->zzae(Ljava/util/List;)I

    move-result p1

    .line 134
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzejj;->zzgq(I)I

    move-result p0

    mul-int p2, p2, p0

    add-int/2addr p1, p2

    return p1
.end method

.method static zzs(ILjava/util/List;Z)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)I"
        }
    .end annotation

    .line 149
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_8

    const/4 p0, 0x0

    return p0

    .line 152
    :cond_8
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzemh;->zzaf(Ljava/util/List;)I

    move-result p1

    .line 153
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzejj;->zzgq(I)I

    move-result p0

    mul-int p2, p2, p0

    add-int/2addr p1, p2

    return p1
.end method

.method static zzt(ILjava/util/List;Z)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)I"
        }
    .end annotation

    .line 168
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_8

    const/4 p0, 0x0

    return p0

    .line 171
    :cond_8
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzemh;->zzag(Ljava/util/List;)I

    move-result p1

    .line 172
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzejj;->zzgq(I)I

    move-result p0

    mul-int p2, p2, p0

    add-int/2addr p1, p2

    return p1
.end method

.method static zzu(ILjava/util/List;Z)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)I"
        }
    .end annotation

    .line 187
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_8

    const/4 p0, 0x0

    return p0

    .line 190
    :cond_8
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzemh;->zzah(Ljava/util/List;)I

    move-result p1

    .line 191
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzejj;->zzgq(I)I

    move-result p0

    mul-int p2, p2, p0

    add-int/2addr p1, p2

    return p1
.end method

.method static zzv(ILjava/util/List;Z)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;Z)I"
        }
    .end annotation

    .line 193
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_8

    return p2

    .line 197
    :cond_8
    invoke-static {p0, p2}, Lcom/google/android/gms/internal/ads/zzejj;->zzai(II)I

    move-result p0

    mul-int p1, p1, p0

    return p1
.end method

.method static zzw(ILjava/util/List;Z)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;Z)I"
        }
    .end annotation

    .line 199
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    const-wide/16 v0, 0x0

    .line 203
    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzejj;->zzn(IJ)I

    move-result p0

    mul-int p1, p1, p0

    return p1
.end method

.method static zzx(ILjava/util/List;Z)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;Z)I"
        }
    .end annotation

    .line 205
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    const/4 p2, 0x1

    .line 209
    invoke-static {p0, p2}, Lcom/google/android/gms/internal/ads/zzejj;->zzi(IZ)I

    move-result p0

    mul-int p1, p1, p0

    return p1
.end method
