.class public final Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "com.google.firebase:firebase-config@@19.1.4"

# interfaces
.implements Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValueOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/remoteconfig/proto/ConfigPersistence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NamespaceKeyValue"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;",
        "Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue$Builder;",
        ">;",
        "Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValueOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;

.field public static final KEY_VALUE_FIELD_NUMBER:I = 0x2

.field public static final NAMESPACE_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bitField0_:I

.field private keyValue_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;",
            ">;"
        }
    .end annotation
.end field

.field private namespace_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1958
    new-instance v0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;

    invoke-direct {v0}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;-><init>()V

    sput-object v0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->DEFAULT_INSTANCE:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;

    .line 1959
    sget-object v0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->DEFAULT_INSTANCE:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;

    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1431
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 1432
    iput-object v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->namespace_:Ljava/lang/String;

    .line 1433
    invoke-static {}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->keyValue_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$3400()Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;
    .registers 1

    .line 1426
    sget-object v0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->DEFAULT_INSTANCE:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;Ljava/lang/String;)V
    .registers 2

    .line 1426
    invoke-direct {p0, p1}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->setNamespace(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;)V
    .registers 1

    .line 1426
    invoke-direct {p0}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->clearNamespace()V

    return-void
.end method

.method static synthetic access$3700(Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 1426
    invoke-direct {p0, p1}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->setNamespaceBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;ILcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;)V
    .registers 3

    .line 1426
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->setKeyValue(ILcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;ILcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue$Builder;)V
    .registers 3

    .line 1426
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->setKeyValue(ILcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue$Builder;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;)V
    .registers 2

    .line 1426
    invoke-direct {p0, p1}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->addKeyValue(Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;ILcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;)V
    .registers 3

    .line 1426
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->addKeyValue(ILcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue$Builder;)V
    .registers 2

    .line 1426
    invoke-direct {p0, p1}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->addKeyValue(Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue$Builder;)V

    return-void
.end method

.method static synthetic access$4300(Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;ILcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue$Builder;)V
    .registers 3

    .line 1426
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->addKeyValue(ILcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue$Builder;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;Ljava/lang/Iterable;)V
    .registers 2

    .line 1426
    invoke-direct {p0, p1}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->addAllKeyValue(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;)V
    .registers 1

    .line 1426
    invoke-direct {p0}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->clearKeyValue()V

    return-void
.end method

.method static synthetic access$4600(Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;I)V
    .registers 2

    .line 1426
    invoke-direct {p0, p1}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->removeKeyValue(I)V

    return-void
.end method

.method private addAllKeyValue(Ljava/lang/Iterable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;",
            ">;)V"
        }
    .end annotation

    .line 1589
    invoke-direct {p0}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->ensureKeyValueIsMutable()V

    .line 1590
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->keyValue_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-void
.end method

.method private addKeyValue(ILcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue$Builder;)V
    .registers 4

    .line 1581
    invoke-direct {p0}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->ensureKeyValueIsMutable()V

    .line 1582
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->keyValue_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addKeyValue(ILcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;)V
    .registers 4

    if-eqz p2, :cond_b

    .line 1565
    invoke-direct {p0}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->ensureKeyValueIsMutable()V

    .line 1566
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->keyValue_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void

    .line 1563
    :cond_b
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private addKeyValue(Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue$Builder;)V
    .registers 3

    .line 1573
    invoke-direct {p0}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->ensureKeyValueIsMutable()V

    .line 1574
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->keyValue_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addKeyValue(Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;)V
    .registers 3

    if-eqz p1, :cond_b

    .line 1554
    invoke-direct {p0}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->ensureKeyValueIsMutable()V

    .line 1555
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->keyValue_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void

    .line 1552
    :cond_b
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private clearKeyValue()V
    .registers 2

    .line 1597
    invoke-static {}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->keyValue_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearNamespace()V
    .registers 2

    .line 1472
    iget v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->bitField0_:I

    .line 1473
    invoke-static {}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->getDefaultInstance()Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->getNamespace()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->namespace_:Ljava/lang/String;

    return-void
.end method

.method private ensureKeyValueIsMutable()V
    .registers 2

    .line 1522
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->keyValue_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_10

    .line 1523
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->keyValue_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1524
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->keyValue_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_10
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;
    .registers 1

    .line 1963
    sget-object v0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->DEFAULT_INSTANCE:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue$Builder;
    .registers 1

    .line 1698
    sget-object v0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->DEFAULT_INSTANCE:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;

    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;)Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue$Builder;
    .registers 2

    .line 1701
    sget-object v0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->DEFAULT_INSTANCE:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;

    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue$Builder;

    invoke-virtual {v0, p0}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1675
    sget-object v0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->DEFAULT_INSTANCE:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;

    invoke-static {v0, p0}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1681
    sget-object v0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->DEFAULT_INSTANCE:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;

    invoke-static {v0, p0, p1}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1639
    sget-object v0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->DEFAULT_INSTANCE:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1646
    sget-object v0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->DEFAULT_INSTANCE:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1686
    sget-object v0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->DEFAULT_INSTANCE:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1693
    sget-object v0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->DEFAULT_INSTANCE:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1663
    sget-object v0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->DEFAULT_INSTANCE:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1670
    sget-object v0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->DEFAULT_INSTANCE:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1651
    sget-object v0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->DEFAULT_INSTANCE:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1658
    sget-object v0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->DEFAULT_INSTANCE:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;",
            ">;"
        }
    .end annotation

    .line 1969
    sget-object v0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->DEFAULT_INSTANCE:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;

    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeKeyValue(I)V
    .registers 3

    .line 1603
    invoke-direct {p0}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->ensureKeyValueIsMutable()V

    .line 1604
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->keyValue_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setKeyValue(ILcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue$Builder;)V
    .registers 4

    .line 1544
    invoke-direct {p0}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->ensureKeyValueIsMutable()V

    .line 1545
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->keyValue_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setKeyValue(ILcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;)V
    .registers 4

    if-eqz p2, :cond_b

    .line 1536
    invoke-direct {p0}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->ensureKeyValueIsMutable()V

    .line 1537
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->keyValue_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 1534
    :cond_b
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private setNamespace(Ljava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_b

    .line 1465
    iget v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->bitField0_:I

    .line 1466
    iput-object p1, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->namespace_:Ljava/lang/String;

    return-void

    .line 1463
    :cond_b
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private setNamespaceBytes(Lcom/google/protobuf/ByteString;)V
    .registers 3

    if-eqz p1, :cond_f

    .line 1483
    iget v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->bitField0_:I

    .line 1484
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->namespace_:Ljava/lang/String;

    return-void

    .line 1481
    :cond_f
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    .line 1866
    sget-object v0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_e0

    .line 1951
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 1942
    :pswitch_12
    sget-object p1, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_2b

    const-class p1, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;

    monitor-enter p1

    .line 1943
    :try_start_19
    sget-object p2, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p2, :cond_26

    .line 1944
    new-instance p2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->DEFAULT_INSTANCE:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;

    invoke-direct {p2, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p2, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->PARSER:Lcom/google/protobuf/Parser;

    .line 1946
    :cond_26
    monitor-exit p1

    goto :goto_2b

    :catchall_28
    move-exception p2

    monitor-exit p1
    :try_end_2a
    .catchall {:try_start_19 .. :try_end_2a} :catchall_28

    throw p2

    .line 1948
    :cond_2b
    :goto_2b
    sget-object p1, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->PARSER:Lcom/google/protobuf/Parser;

    return-object p1

    .line 1894
    :pswitch_2e
    check-cast p2, Lcom/google/protobuf/CodedInputStream;

    .line 1896
    check-cast p3, Lcom/google/protobuf/ExtensionRegistryLite;

    const/4 p1, 0x0

    :cond_33
    :goto_33
    if-nez p1, :cond_9b

    .line 1901
    :try_start_35
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_77

    const/16 v2, 0xa

    if-eq v0, v2, :cond_6b

    const/16 v2, 0x12

    if-eq v0, v2, :cond_4b

    .line 1907
    invoke-virtual {p0, v0, p2}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->parseUnknownField(ILcom/google/protobuf/CodedInputStream;)Z

    move-result v0

    if-nez v0, :cond_33

    goto :goto_77

    .line 1919
    :cond_4b
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->keyValue_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_5b

    .line 1920
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->keyValue_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1921
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->keyValue_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1923
    :cond_5b
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->keyValue_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1924
    invoke-static {}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;->parser()Lcom/google/protobuf/Parser;

    move-result-object v1

    invoke-virtual {p2, v1, p3}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;

    .line 1923
    invoke-interface {v0, v1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    goto :goto_33

    .line 1913
    :cond_6b
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1914
    iget v2, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->bitField0_:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->bitField0_:I

    .line 1915
    iput-object v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->namespace_:Ljava/lang/String;
    :try_end_76
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_35 .. :try_end_76} :catch_8f
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_76} :catch_7b
    .catchall {:try_start_35 .. :try_end_76} :catchall_79

    goto :goto_33

    :cond_77
    :goto_77
    const/4 p1, 0x1

    goto :goto_33

    :catchall_79
    move-exception p1

    goto :goto_9a

    :catch_7b
    move-exception p1

    .line 1932
    :try_start_7c
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 1934
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_8f
    move-exception p1

    .line 1930
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_9a
    .catchall {:try_start_7c .. :try_end_9a} :catchall_79

    .line 1935
    :goto_9a
    throw p1

    .line 1939
    :cond_9b
    :pswitch_9b
    sget-object p1, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->DEFAULT_INSTANCE:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;

    return-object p1

    .line 1881
    :pswitch_9e
    check-cast p2, Lcom/google/protobuf/GeneratedMessageLite$Visitor;

    .line 1882
    check-cast p3, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;

    .line 1884
    invoke-virtual {p0}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->hasNamespace()Z

    move-result p1

    iget-object v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->namespace_:Ljava/lang/String;

    .line 1885
    invoke-virtual {p3}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->hasNamespace()Z

    move-result v1

    iget-object v2, p3, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->namespace_:Ljava/lang/String;

    .line 1883
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->namespace_:Ljava/lang/String;

    .line 1886
    iget-object p1, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->keyValue_:Lcom/google/protobuf/Internal$ProtobufList;

    iget-object v0, p3, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->keyValue_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p2, p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitList(Lcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->keyValue_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1887
    sget-object p1, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;

    if-ne p2, p1, :cond_c9

    .line 1889
    iget p1, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->bitField0_:I

    iget p2, p3, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->bitField0_:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->bitField0_:I

    :cond_c9
    return-object p0

    .line 1878
    :pswitch_ca
    new-instance p1, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue$Builder;

    invoke-direct {p1, v0}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue$Builder;-><init>(Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$1;)V

    return-object p1

    .line 1874
    :pswitch_d0
    iget-object p1, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->keyValue_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/google/protobuf/Internal$ProtobufList;->makeImmutable()V

    return-object v0

    .line 1871
    :pswitch_d6
    sget-object p1, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->DEFAULT_INSTANCE:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;

    return-object p1

    .line 1868
    :pswitch_d9
    new-instance p1, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;

    invoke-direct {p1}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;-><init>()V

    return-object p1

    nop

    :pswitch_data_e0
    .packed-switch 0x1
        :pswitch_d9
        :pswitch_d6
        :pswitch_d0
        :pswitch_ca
        :pswitch_9e
        :pswitch_2e
        :pswitch_9b
        :pswitch_12
    .end packed-switch
.end method

.method public getKeyValue(I)Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;
    .registers 3

    .line 1512
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->keyValue_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;

    return-object p1
.end method

.method public getKeyValueCount()I
    .registers 2

    .line 1506
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->keyValue_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getKeyValueList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;",
            ">;"
        }
    .end annotation

    .line 1493
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->keyValue_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getKeyValueOrBuilder(I)Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValueOrBuilder;
    .registers 3

    .line 1519
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->keyValue_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValueOrBuilder;

    return-object p1
.end method

.method public getKeyValueOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValueOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1500
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->keyValue_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .registers 2

    .line 1448
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->namespace_:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespaceBytes()Lcom/google/protobuf/ByteString;
    .registers 2

    .line 1455
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->namespace_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 5

    .line 1619
    iget v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 1623
    :cond_6
    iget v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_17

    .line 1625
    invoke-virtual {p0}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    .line 1627
    :goto_18
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->keyValue_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v1}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v1

    if-ge v2, v1, :cond_31

    const/4 v1, 0x2

    .line 1628
    iget-object v3, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->keyValue_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1629
    invoke-interface {v3, v2}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 1631
    :cond_31
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSetLite;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 1632
    iput v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->memoizedSerializedSize:I

    return v0
.end method

.method public hasNamespace()Z
    .registers 3

    .line 1442
    iget v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1609
    iget v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_d

    .line 1610
    invoke-virtual {p0}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    :cond_d
    const/4 v0, 0x0

    .line 1612
    :goto_e
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->keyValue_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v1}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v1

    if-ge v0, v1, :cond_25

    const/4 v1, 0x2

    .line 1613
    iget-object v2, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->keyValue_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v2, v0}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 1615
    :cond_25
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$NamespaceKeyValue;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSetLite;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
