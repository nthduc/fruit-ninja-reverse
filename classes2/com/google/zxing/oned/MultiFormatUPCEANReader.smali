.class public final Lcom/google/zxing/oned/MultiFormatUPCEANReader;
.super Lcom/google/zxing/oned/OneDReader;
.source "MultiFormatUPCEANReader.java"


# instance fields
.field private final readers:[Lcom/google/zxing/oned/UPCEANReader;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    if-nez p1, :cond_7

    const/4 p1, 0x0

    goto :goto_f

    .line 44
    :cond_7
    sget-object v0, Lcom/google/zxing/DecodeHintType;->POSSIBLE_FORMATS:Lcom/google/zxing/DecodeHintType;

    .line 45
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    .line 46
    :goto_f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_57

    .line 48
    sget-object v1, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {p1, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 49
    new-instance v1, Lcom/google/zxing/oned/EAN13Reader;

    invoke-direct {v1}, Lcom/google/zxing/oned/EAN13Reader;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_37

    .line 50
    :cond_27
    sget-object v1, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {p1, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 51
    new-instance v1, Lcom/google/zxing/oned/UPCAReader;

    invoke-direct {v1}, Lcom/google/zxing/oned/UPCAReader;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 53
    :cond_37
    :goto_37
    sget-object v1, Lcom/google/zxing/BarcodeFormat;->EAN_8:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {p1, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 54
    new-instance v1, Lcom/google/zxing/oned/EAN8Reader;

    invoke-direct {v1}, Lcom/google/zxing/oned/EAN8Reader;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 56
    :cond_47
    sget-object v1, Lcom/google/zxing/BarcodeFormat;->UPC_E:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {p1, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_57

    .line 57
    new-instance p1, Lcom/google/zxing/oned/UPCEReader;

    invoke-direct {p1}, Lcom/google/zxing/oned/UPCEReader;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 60
    :cond_57
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_75

    .line 61
    new-instance p1, Lcom/google/zxing/oned/EAN13Reader;

    invoke-direct {p1}, Lcom/google/zxing/oned/EAN13Reader;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 63
    new-instance p1, Lcom/google/zxing/oned/EAN8Reader;

    invoke-direct {p1}, Lcom/google/zxing/oned/EAN8Reader;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 64
    new-instance p1, Lcom/google/zxing/oned/UPCEReader;

    invoke-direct {p1}, Lcom/google/zxing/oned/UPCEReader;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_75
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result p1

    new-array p1, p1, [Lcom/google/zxing/oned/UPCEANReader;

    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/zxing/oned/UPCEANReader;

    iput-object p1, p0, Lcom/google/zxing/oned/MultiFormatUPCEANReader;->readers:[Lcom/google/zxing/oned/UPCEANReader;

    return-void
.end method


# virtual methods
.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/zxing/common/BitArray;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 74
    invoke-static {p2}, Lcom/google/zxing/oned/UPCEANReader;->findStartGuardPattern(Lcom/google/zxing/common/BitArray;)[I

    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/google/zxing/oned/MultiFormatUPCEANReader;->readers:[Lcom/google/zxing/oned/UPCEANReader;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_9
    if-ge v4, v2, :cond_6a

    aget-object v5, v1, v4

    .line 77
    :try_start_d
    invoke-virtual {v5, p1, p2, v0, p3}, Lcom/google/zxing/oned/UPCEANReader;->decodeRow(ILcom/google/zxing/common/BitArray;[ILjava/util/Map;)Lcom/google/zxing/Result;

    move-result-object v5

    .line 91
    invoke-virtual {v5}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v6

    sget-object v7, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    const/4 v8, 0x1

    if-ne v6, v7, :cond_28

    .line 92
    invoke-virtual {v5}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x30

    if-ne v6, v7, :cond_28

    const/4 v6, 0x1

    goto :goto_29

    :cond_28
    const/4 v6, 0x0

    :goto_29
    if-nez p3, :cond_2d

    const/4 v7, 0x0

    goto :goto_35

    .line 94
    :cond_2d
    sget-object v7, Lcom/google/zxing/DecodeHintType;->POSSIBLE_FORMATS:Lcom/google/zxing/DecodeHintType;

    .line 95
    invoke-interface {p3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Collection;

    :goto_35
    if-eqz v7, :cond_42

    .line 96
    sget-object v9, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v7, v9}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_40

    goto :goto_42

    :cond_40
    const/4 v7, 0x0

    goto :goto_43

    :cond_42
    :goto_42
    const/4 v7, 0x1

    :goto_43
    if-eqz v6, :cond_66

    if-eqz v7, :cond_66

    .line 100
    new-instance v6, Lcom/google/zxing/Result;

    invoke-virtual {v5}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 101
    invoke-virtual {v5}, Lcom/google/zxing/Result;->getRawBytes()[B

    move-result-object v8

    .line 102
    invoke-virtual {v5}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v9

    sget-object v10, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    .line 104
    invoke-virtual {v5}, Lcom/google/zxing/Result;->getResultMetadata()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/google/zxing/Result;->putAllMetadata(Ljava/util/Map;)V
    :try_end_65
    .catch Lcom/google/zxing/ReaderException; {:try_start_d .. :try_end_65} :catch_67

    return-object v6

    :cond_66
    return-object v5

    :catch_67
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 113
    :cond_6a
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p1

    throw p1

    return-void
.end method

.method public reset()V
    .registers 5

    .line 118
    iget-object v0, p0, Lcom/google/zxing/oned/MultiFormatUPCEANReader;->readers:[Lcom/google/zxing/oned/UPCEANReader;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    .line 119
    invoke-interface {v3}, Lcom/google/zxing/Reader;->reset()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_e
    return-void
.end method
