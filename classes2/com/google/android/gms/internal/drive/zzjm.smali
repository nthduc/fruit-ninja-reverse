.class Lcom/google/android/gms/internal/drive/zzjm;
.super Lcom/google/android/gms/internal/drive/zzjl;


# instance fields
.field protected final zzny:[B


# direct methods
.method constructor <init>([B)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/drive/zzjl;-><init>()V

    if-eqz p1, :cond_8

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/drive/zzjm;->zzny:[B

    return-void

    .line 3
    :cond_8
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 20
    :cond_4
    instance-of v1, p1, Lcom/google/android/gms/internal/drive/zzjc;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 22
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zzjc;->size()I

    move-result v1

    move-object v3, p1

    check-cast v3, Lcom/google/android/gms/internal/drive/zzjc;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/drive/zzjc;->size()I

    move-result v3

    if-eq v1, v3, :cond_18

    return v2

    .line 24
    :cond_18
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zzjc;->size()I

    move-result v1

    if-nez v1, :cond_1f

    return v0

    .line 26
    :cond_1f
    instance-of v0, p1, Lcom/google/android/gms/internal/drive/zzjm;

    if-eqz v0, :cond_3d

    .line 27
    check-cast p1, Lcom/google/android/gms/internal/drive/zzjm;

    .line 28
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zzjc;->zzbv()I

    move-result v0

    .line 29
    invoke-virtual {p1}, Lcom/google/android/gms/internal/drive/zzjc;->zzbv()I

    move-result v1

    if-eqz v0, :cond_34

    if-eqz v1, :cond_34

    if-eq v0, v1, :cond_34

    return v2

    .line 32
    :cond_34
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zzjc;->size()I

    move-result v0

    invoke-virtual {p0, p1, v2, v0}, Lcom/google/android/gms/internal/drive/zzjl;->zza(Lcom/google/android/gms/internal/drive/zzjc;II)Z

    move-result p1

    return p1

    .line 33
    :cond_3d
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public size()I
    .registers 2

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzjm;->zzny:[B

    array-length v0, v0

    return v0
.end method

.method protected final zza(III)I
    .registers 5

    .line 52
    iget-object p2, p0, Lcom/google/android/gms/internal/drive/zzjm;->zzny:[B

    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zzjm;->zzbw()I

    move-result v0

    invoke-static {p1, p2, v0, p3}, Lcom/google/android/gms/internal/drive/zzkm;->zza(I[BII)I

    move-result p1

    return p1
.end method

.method public final zza(II)Lcom/google/android/gms/internal/drive/zzjc;
    .registers 5

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zzjc;->size()I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p2, p1}, Lcom/google/android/gms/internal/drive/zzjm;->zzb(III)I

    move-result p1

    if-nez p1, :cond_e

    .line 11
    sget-object p1, Lcom/google/android/gms/internal/drive/zzjc;->zznq:Lcom/google/android/gms/internal/drive/zzjc;

    return-object p1

    .line 12
    :cond_e
    new-instance p2, Lcom/google/android/gms/internal/drive/zzjh;

    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzjm;->zzny:[B

    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zzjm;->zzbw()I

    move-result v1

    invoke-direct {p2, v0, v1, p1}, Lcom/google/android/gms/internal/drive/zzjh;-><init>([BII)V

    return-object p2
.end method

.method protected final zza(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 6

    .line 15
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzjm;->zzny:[B

    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zzjm;->zzbw()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zzjc;->size()I

    move-result v3

    invoke-direct {v0, v1, v2, v3, p1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0
.end method

.method final zza(Lcom/google/android/gms/internal/drive/zzjb;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzjm;->zzny:[B

    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zzjm;->zzbw()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zzjc;->size()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/drive/zzjb;->zza([BII)V

    return-void
.end method

.method final zza(Lcom/google/android/gms/internal/drive/zzjc;II)Z
    .registers 9

    .line 34
    invoke-virtual {p1}, Lcom/google/android/gms/internal/drive/zzjc;->size()I

    move-result p2

    if-gt p3, p2, :cond_66

    .line 36
    invoke-virtual {p1}, Lcom/google/android/gms/internal/drive/zzjc;->size()I

    move-result p2

    if-gt p3, p2, :cond_41

    .line 39
    instance-of p2, p1, Lcom/google/android/gms/internal/drive/zzjm;

    const/4 v0, 0x0

    if-eqz p2, :cond_34

    .line 40
    check-cast p1, Lcom/google/android/gms/internal/drive/zzjm;

    .line 41
    iget-object p2, p0, Lcom/google/android/gms/internal/drive/zzjm;->zzny:[B

    .line 42
    iget-object v1, p1, Lcom/google/android/gms/internal/drive/zzjm;->zzny:[B

    .line 43
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zzjm;->zzbw()I

    move-result v2

    add-int/2addr v2, p3

    .line 44
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zzjm;->zzbw()I

    move-result p3

    .line 45
    invoke-virtual {p1}, Lcom/google/android/gms/internal/drive/zzjm;->zzbw()I

    move-result p1

    :goto_24
    if-ge p3, v2, :cond_32

    .line 47
    aget-byte v3, p2, p3

    aget-byte v4, v1, p1

    if-eq v3, v4, :cond_2d

    return v0

    :cond_2d
    add-int/lit8 p3, p3, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_24

    :cond_32
    const/4 p1, 0x1

    return p1

    .line 51
    :cond_34
    invoke-virtual {p1, v0, p3}, Lcom/google/android/gms/internal/drive/zzjc;->zza(II)Lcom/google/android/gms/internal/drive/zzjc;

    move-result-object p1

    invoke-virtual {p0, v0, p3}, Lcom/google/android/gms/internal/drive/zzjc;->zza(II)Lcom/google/android/gms/internal/drive/zzjc;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/drive/zzjc;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 37
    :cond_41
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 38
    invoke-virtual {p1}, Lcom/google/android/gms/internal/drive/zzjc;->size()I

    move-result p1

    const/16 v0, 0x3b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Ran off end of other: 0, "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 35
    :cond_66
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zzjc;->size()I

    move-result p2

    const/16 v0, 0x28

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Length too large: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    return-void
.end method

.method public final zzbu()Z
    .registers 4

    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zzjm;->zzbw()I

    move-result v0

    .line 17
    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzjm;->zzny:[B

    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zzjc;->size()I

    move-result v2

    add-int/2addr v2, v0

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/drive/zznf;->zze([BII)Z

    move-result v0

    return v0
.end method

.method protected zzbw()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public zzs(I)B
    .registers 3

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzjm;->zzny:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method zzt(I)B
    .registers 3

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzjm;->zzny:[B

    aget-byte p1, v0, p1

    return p1
.end method
