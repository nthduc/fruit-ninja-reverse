.class public Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;
.super Ljava/lang/Object;
.source "GeneratedMessageLite.java"

# interfaces
.implements Lcom/google/protobuf/GeneratedMessageLite$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/GeneratedMessageLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "MergeFromVisitor"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 2047
    new-instance v0, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;

    invoke-direct {v0}, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;-><init>()V

    sput-object v0, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 2049
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visitBoolean(ZZZZ)Z
    .registers 5

    if-eqz p3, :cond_3

    move p2, p4

    :cond_3
    return p2
.end method

.method public visitBooleanList(Lcom/google/protobuf/Internal$BooleanList;Lcom/google/protobuf/Internal$BooleanList;)Lcom/google/protobuf/Internal$BooleanList;
    .registers 6

    .line 2182
    invoke-interface {p1}, Lcom/google/protobuf/Internal$BooleanList;->size()I

    move-result v0

    .line 2183
    invoke-interface {p2}, Lcom/google/protobuf/Internal$BooleanList;->size()I

    move-result v1

    if-lez v0, :cond_1a

    if-lez v1, :cond_1a

    .line 2185
    invoke-interface {p1}, Lcom/google/protobuf/Internal$BooleanList;->isModifiable()Z

    move-result v2

    if-nez v2, :cond_17

    add-int/2addr v1, v0

    .line 2186
    invoke-interface {p1, v1}, Lcom/google/protobuf/Internal$BooleanList;->mutableCopyWithCapacity(I)Lcom/google/protobuf/Internal$BooleanList;

    move-result-object p1

    .line 2188
    :cond_17
    invoke-interface {p1, p2}, Lcom/google/protobuf/Internal$BooleanList;->addAll(Ljava/util/Collection;)Z

    :cond_1a
    if-lez v0, :cond_1d

    goto :goto_1e

    :cond_1d
    move-object p1, p2

    :goto_1e
    return-object p1
.end method

.method public visitByteString(ZLcom/google/protobuf/ByteString;ZLcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .registers 5

    if-eqz p3, :cond_3

    move-object p2, p4

    :cond_3
    return-object p2
.end method

.method public visitDouble(ZDZD)D
    .registers 7

    if-eqz p4, :cond_3

    move-wide p2, p5

    :cond_3
    return-wide p2
.end method

.method public visitDoubleList(Lcom/google/protobuf/Internal$DoubleList;Lcom/google/protobuf/Internal$DoubleList;)Lcom/google/protobuf/Internal$DoubleList;
    .registers 6

    .line 2210
    invoke-interface {p1}, Lcom/google/protobuf/Internal$DoubleList;->size()I

    move-result v0

    .line 2211
    invoke-interface {p2}, Lcom/google/protobuf/Internal$DoubleList;->size()I

    move-result v1

    if-lez v0, :cond_1a

    if-lez v1, :cond_1a

    .line 2213
    invoke-interface {p1}, Lcom/google/protobuf/Internal$DoubleList;->isModifiable()Z

    move-result v2

    if-nez v2, :cond_17

    add-int/2addr v1, v0

    .line 2214
    invoke-interface {p1, v1}, Lcom/google/protobuf/Internal$DoubleList;->mutableCopyWithCapacity(I)Lcom/google/protobuf/Internal$DoubleList;

    move-result-object p1

    .line 2216
    :cond_17
    invoke-interface {p1, p2}, Lcom/google/protobuf/Internal$DoubleList;->addAll(Ljava/util/Collection;)Z

    :cond_1a
    if-lez v0, :cond_1d

    goto :goto_1e

    :cond_1d
    move-object p1, p2

    :goto_1e
    return-object p1
.end method

.method public visitExtensions(Lcom/google/protobuf/FieldSet;Lcom/google/protobuf/FieldSet;)Lcom/google/protobuf/FieldSet;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/FieldSet<",
            "Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
            ">;",
            "Lcom/google/protobuf/FieldSet<",
            "Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
            ">;)",
            "Lcom/google/protobuf/FieldSet<",
            "Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
            ">;"
        }
    .end annotation

    .line 2254
    invoke-virtual {p1}, Lcom/google/protobuf/FieldSet;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2255
    invoke-virtual {p1}, Lcom/google/protobuf/FieldSet;->clone()Lcom/google/protobuf/FieldSet;

    move-result-object p1

    .line 2257
    :cond_a
    invoke-virtual {p1, p2}, Lcom/google/protobuf/FieldSet;->mergeFrom(Lcom/google/protobuf/FieldSet;)V

    return-object p1
.end method

.method public visitFloat(ZFZF)F
    .registers 5

    if-eqz p3, :cond_3

    move p2, p4

    :cond_3
    return p2
.end method

.method public visitFloatList(Lcom/google/protobuf/Internal$FloatList;Lcom/google/protobuf/Internal$FloatList;)Lcom/google/protobuf/Internal$FloatList;
    .registers 6

    .line 2224
    invoke-interface {p1}, Lcom/google/protobuf/Internal$FloatList;->size()I

    move-result v0

    .line 2225
    invoke-interface {p2}, Lcom/google/protobuf/Internal$FloatList;->size()I

    move-result v1

    if-lez v0, :cond_1a

    if-lez v1, :cond_1a

    .line 2227
    invoke-interface {p1}, Lcom/google/protobuf/Internal$FloatList;->isModifiable()Z

    move-result v2

    if-nez v2, :cond_17

    add-int/2addr v1, v0

    .line 2228
    invoke-interface {p1, v1}, Lcom/google/protobuf/Internal$FloatList;->mutableCopyWithCapacity(I)Lcom/google/protobuf/Internal$FloatList;

    move-result-object p1

    .line 2230
    :cond_17
    invoke-interface {p1, p2}, Lcom/google/protobuf/Internal$FloatList;->addAll(Ljava/util/Collection;)Z

    :cond_1a
    if-lez v0, :cond_1d

    goto :goto_1e

    :cond_1d
    move-object p1, p2

    :goto_1e
    return-object p1
.end method

.method public visitInt(ZIZI)I
    .registers 5

    if-eqz p3, :cond_3

    move p2, p4

    :cond_3
    return p2
.end method

.method public visitIntList(Lcom/google/protobuf/Internal$IntList;Lcom/google/protobuf/Internal$IntList;)Lcom/google/protobuf/Internal$IntList;
    .registers 6

    .line 2196
    invoke-interface {p1}, Lcom/google/protobuf/Internal$IntList;->size()I

    move-result v0

    .line 2197
    invoke-interface {p2}, Lcom/google/protobuf/Internal$IntList;->size()I

    move-result v1

    if-lez v0, :cond_1a

    if-lez v1, :cond_1a

    .line 2199
    invoke-interface {p1}, Lcom/google/protobuf/Internal$IntList;->isModifiable()Z

    move-result v2

    if-nez v2, :cond_17

    add-int/2addr v1, v0

    .line 2200
    invoke-interface {p1, v1}, Lcom/google/protobuf/Internal$IntList;->mutableCopyWithCapacity(I)Lcom/google/protobuf/Internal$IntList;

    move-result-object p1

    .line 2202
    :cond_17
    invoke-interface {p1, p2}, Lcom/google/protobuf/Internal$IntList;->addAll(Ljava/util/Collection;)Z

    :cond_1a
    if-lez v0, :cond_1d

    goto :goto_1e

    :cond_1d
    move-object p1, p2

    :goto_1e
    return-object p1
.end method

.method public visitLazyMessage(Lcom/google/protobuf/LazyFieldLite;Lcom/google/protobuf/LazyFieldLite;)Lcom/google/protobuf/LazyFieldLite;
    .registers 3

    if-eqz p2, :cond_c

    if-nez p1, :cond_9

    .line 2159
    new-instance p1, Lcom/google/protobuf/LazyFieldLite;

    invoke-direct {p1}, Lcom/google/protobuf/LazyFieldLite;-><init>()V

    .line 2161
    :cond_9
    invoke-virtual {p1, p2}, Lcom/google/protobuf/LazyFieldLite;->merge(Lcom/google/protobuf/LazyFieldLite;)V

    :cond_c
    return-object p1
.end method

.method public visitList(Lcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "TT;>;",
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "TT;>;)",
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "TT;>;"
        }
    .end annotation

    .line 2168
    invoke-interface {p1}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    .line 2169
    invoke-interface {p2}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v1

    if-lez v0, :cond_1a

    if-lez v1, :cond_1a

    .line 2171
    invoke-interface {p1}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v2

    if-nez v2, :cond_17

    add-int/2addr v1, v0

    .line 2172
    invoke-interface {p1, v1}, Lcom/google/protobuf/Internal$ProtobufList;->mutableCopyWithCapacity(I)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object p1

    .line 2174
    :cond_17
    invoke-interface {p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->addAll(Ljava/util/Collection;)Z

    :cond_1a
    if-lez v0, :cond_1d

    goto :goto_1e

    :cond_1d
    move-object p1, p2

    :goto_1e
    return-object p1
.end method

.method public visitLong(ZJZJ)J
    .registers 7

    if-eqz p4, :cond_3

    move-wide p2, p5

    :cond_3
    return-wide p2
.end method

.method public visitLongList(Lcom/google/protobuf/Internal$LongList;Lcom/google/protobuf/Internal$LongList;)Lcom/google/protobuf/Internal$LongList;
    .registers 6

    .line 2238
    invoke-interface {p1}, Lcom/google/protobuf/Internal$LongList;->size()I

    move-result v0

    .line 2239
    invoke-interface {p2}, Lcom/google/protobuf/Internal$LongList;->size()I

    move-result v1

    if-lez v0, :cond_1a

    if-lez v1, :cond_1a

    .line 2241
    invoke-interface {p1}, Lcom/google/protobuf/Internal$LongList;->isModifiable()Z

    move-result v2

    if-nez v2, :cond_17

    add-int/2addr v1, v0

    .line 2242
    invoke-interface {p1, v1}, Lcom/google/protobuf/Internal$LongList;->mutableCopyWithCapacity(I)Lcom/google/protobuf/Internal$LongList;

    move-result-object p1

    .line 2244
    :cond_17
    invoke-interface {p1, p2}, Lcom/google/protobuf/Internal$LongList;->addAll(Ljava/util/Collection;)Z

    :cond_1a
    if-lez v0, :cond_1d

    goto :goto_1e

    :cond_1d
    move-object p1, p2

    :goto_1e
    return-object p1
.end method

.method public visitMap(Lcom/google/protobuf/MapFieldLite;Lcom/google/protobuf/MapFieldLite;)Lcom/google/protobuf/MapFieldLite;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/MapFieldLite<",
            "TK;TV;>;",
            "Lcom/google/protobuf/MapFieldLite<",
            "TK;TV;>;)",
            "Lcom/google/protobuf/MapFieldLite<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2271
    invoke-virtual {p2}, Lcom/google/protobuf/MapFieldLite;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    .line 2272
    invoke-virtual {p1}, Lcom/google/protobuf/MapFieldLite;->isMutable()Z

    move-result v0

    if-nez v0, :cond_10

    .line 2273
    invoke-virtual {p1}, Lcom/google/protobuf/MapFieldLite;->mutableCopy()Lcom/google/protobuf/MapFieldLite;

    move-result-object p1

    .line 2275
    :cond_10
    invoke-virtual {p1, p2}, Lcom/google/protobuf/MapFieldLite;->mergeFrom(Lcom/google/protobuf/MapFieldLite;)V

    :cond_13
    return-object p1
.end method

.method public visitMessage(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/protobuf/MessageLite;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    if-eqz p1, :cond_11

    if-eqz p2, :cond_11

    .line 2149
    invoke-interface {p1}, Lcom/google/protobuf/MessageLite;->toBuilder()Lcom/google/protobuf/MessageLite$Builder;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/google/protobuf/MessageLite$Builder;->mergeFrom(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite$Builder;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/protobuf/MessageLite$Builder;->build()Lcom/google/protobuf/MessageLite;

    move-result-object p1

    return-object p1

    :cond_11
    if-eqz p1, :cond_14

    goto :goto_15

    :cond_14
    move-object p1, p2

    :goto_15
    return-object p1
.end method

.method public visitOneofBoolean(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    return-object p3
.end method

.method public visitOneofByteString(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    return-object p3
.end method

.method public visitOneofDouble(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    return-object p3
.end method

.method public visitOneofFloat(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    return-object p3
.end method

.method public visitOneofInt(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    return-object p3
.end method

.method public visitOneofLazyMessage(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    if-eqz p1, :cond_5

    .line 2127
    check-cast p2, Lcom/google/protobuf/LazyFieldLite;

    goto :goto_a

    :cond_5
    new-instance p2, Lcom/google/protobuf/LazyFieldLite;

    invoke-direct {p2}, Lcom/google/protobuf/LazyFieldLite;-><init>()V

    .line 2128
    :goto_a
    check-cast p3, Lcom/google/protobuf/LazyFieldLite;

    invoke-virtual {p2, p3}, Lcom/google/protobuf/LazyFieldLite;->merge(Lcom/google/protobuf/LazyFieldLite;)V

    return-object p2
.end method

.method public visitOneofLong(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    return-object p3
.end method

.method public visitOneofMessage(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    if-eqz p1, :cond_b

    .line 2135
    check-cast p2, Lcom/google/protobuf/MessageLite;

    check-cast p3, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;->visitMessage(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;

    move-result-object p1

    return-object p1

    :cond_b
    return-object p3
.end method

.method public visitOneofNotSet(Z)V
    .registers 2

    return-void
.end method

.method public visitOneofString(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    return-object p3
.end method

.method public visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .registers 5

    if-eqz p3, :cond_3

    move-object p2, p4

    :cond_3
    return-object p2
.end method

.method public visitUnknownFields(Lcom/google/protobuf/UnknownFieldSetLite;Lcom/google/protobuf/UnknownFieldSetLite;)Lcom/google/protobuf/UnknownFieldSetLite;
    .registers 4

    .line 2265
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSetLite;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSetLite;

    move-result-object v0

    if-ne p2, v0, :cond_7

    goto :goto_b

    .line 2266
    :cond_7
    invoke-static {p1, p2}, Lcom/google/protobuf/UnknownFieldSetLite;->mutableCopyOf(Lcom/google/protobuf/UnknownFieldSetLite;Lcom/google/protobuf/UnknownFieldSetLite;)Lcom/google/protobuf/UnknownFieldSetLite;

    move-result-object p1

    :goto_b
    return-object p1
.end method
