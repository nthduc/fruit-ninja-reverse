.class public final Lcom/google/android/gms/config/proto/Config$PackageTable;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "com.google.firebase:firebase-config@@19.1.4"

# interfaces
.implements Lcom/google/android/gms/config/proto/Config$PackageTableOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/config/proto/Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PackageTable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/config/proto/Config$PackageTable$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/android/gms/config/proto/Config$PackageTable;",
        "Lcom/google/android/gms/config/proto/Config$PackageTable$Builder;",
        ">;",
        "Lcom/google/android/gms/config/proto/Config$PackageTableOrBuilder;"
    }
.end annotation


# static fields
.field public static final CONFIG_ID_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$PackageTable;

.field public static final ENTRY_FIELD_NUMBER:I = 0x2

.field public static final PACKAGE_NAME_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/gms/config/proto/Config$PackageTable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bitField0_:I

.field private configId_:Ljava/lang/String;

.field private entry_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/android/gms/config/proto/Config$KeyValue;",
            ">;"
        }
    .end annotation
.end field

.field private packageName_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 10107
    new-instance v0, Lcom/google/android/gms/config/proto/Config$PackageTable;

    invoke-direct {v0}, Lcom/google/android/gms/config/proto/Config$PackageTable;-><init>()V

    sput-object v0, Lcom/google/android/gms/config/proto/Config$PackageTable;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$PackageTable;

    .line 10108
    sget-object v0, Lcom/google/android/gms/config/proto/Config$PackageTable;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$PackageTable;

    invoke-virtual {v0}, Lcom/google/android/gms/config/proto/Config$PackageTable;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 9224
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 9225
    iput-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageTable;->packageName_:Ljava/lang/String;

    .line 9226
    invoke-static {}, Lcom/google/android/gms/config/proto/Config$PackageTable;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/config/proto/Config$PackageTable;->entry_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 9227
    iput-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageTable;->configId_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$13200()Lcom/google/android/gms/config/proto/Config$PackageTable;
    .registers 1

    .line 9219
    sget-object v0, Lcom/google/android/gms/config/proto/Config$PackageTable;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$PackageTable;

    return-object v0
.end method

.method static synthetic access$13300(Lcom/google/android/gms/config/proto/Config$PackageTable;Ljava/lang/String;)V
    .registers 2

    .line 9219
    invoke-direct {p0, p1}, Lcom/google/android/gms/config/proto/Config$PackageTable;->setPackageName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$13400(Lcom/google/android/gms/config/proto/Config$PackageTable;)V
    .registers 1

    .line 9219
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$PackageTable;->clearPackageName()V

    return-void
.end method

.method static synthetic access$13500(Lcom/google/android/gms/config/proto/Config$PackageTable;Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 9219
    invoke-direct {p0, p1}, Lcom/google/android/gms/config/proto/Config$PackageTable;->setPackageNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$13600(Lcom/google/android/gms/config/proto/Config$PackageTable;ILcom/google/android/gms/config/proto/Config$KeyValue;)V
    .registers 3

    .line 9219
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/config/proto/Config$PackageTable;->setEntry(ILcom/google/android/gms/config/proto/Config$KeyValue;)V

    return-void
.end method

.method static synthetic access$13700(Lcom/google/android/gms/config/proto/Config$PackageTable;ILcom/google/android/gms/config/proto/Config$KeyValue$Builder;)V
    .registers 3

    .line 9219
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/config/proto/Config$PackageTable;->setEntry(ILcom/google/android/gms/config/proto/Config$KeyValue$Builder;)V

    return-void
.end method

.method static synthetic access$13800(Lcom/google/android/gms/config/proto/Config$PackageTable;Lcom/google/android/gms/config/proto/Config$KeyValue;)V
    .registers 2

    .line 9219
    invoke-direct {p0, p1}, Lcom/google/android/gms/config/proto/Config$PackageTable;->addEntry(Lcom/google/android/gms/config/proto/Config$KeyValue;)V

    return-void
.end method

.method static synthetic access$13900(Lcom/google/android/gms/config/proto/Config$PackageTable;ILcom/google/android/gms/config/proto/Config$KeyValue;)V
    .registers 3

    .line 9219
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/config/proto/Config$PackageTable;->addEntry(ILcom/google/android/gms/config/proto/Config$KeyValue;)V

    return-void
.end method

.method static synthetic access$14000(Lcom/google/android/gms/config/proto/Config$PackageTable;Lcom/google/android/gms/config/proto/Config$KeyValue$Builder;)V
    .registers 2

    .line 9219
    invoke-direct {p0, p1}, Lcom/google/android/gms/config/proto/Config$PackageTable;->addEntry(Lcom/google/android/gms/config/proto/Config$KeyValue$Builder;)V

    return-void
.end method

.method static synthetic access$14100(Lcom/google/android/gms/config/proto/Config$PackageTable;ILcom/google/android/gms/config/proto/Config$KeyValue$Builder;)V
    .registers 3

    .line 9219
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/config/proto/Config$PackageTable;->addEntry(ILcom/google/android/gms/config/proto/Config$KeyValue$Builder;)V

    return-void
.end method

.method static synthetic access$14200(Lcom/google/android/gms/config/proto/Config$PackageTable;Ljava/lang/Iterable;)V
    .registers 2

    .line 9219
    invoke-direct {p0, p1}, Lcom/google/android/gms/config/proto/Config$PackageTable;->addAllEntry(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$14300(Lcom/google/android/gms/config/proto/Config$PackageTable;)V
    .registers 1

    .line 9219
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$PackageTable;->clearEntry()V

    return-void
.end method

.method static synthetic access$14400(Lcom/google/android/gms/config/proto/Config$PackageTable;I)V
    .registers 2

    .line 9219
    invoke-direct {p0, p1}, Lcom/google/android/gms/config/proto/Config$PackageTable;->removeEntry(I)V

    return-void
.end method

.method static synthetic access$14500(Lcom/google/android/gms/config/proto/Config$PackageTable;Ljava/lang/String;)V
    .registers 2

    .line 9219
    invoke-direct {p0, p1}, Lcom/google/android/gms/config/proto/Config$PackageTable;->setConfigId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$14600(Lcom/google/android/gms/config/proto/Config$PackageTable;)V
    .registers 1

    .line 9219
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$PackageTable;->clearConfigId()V

    return-void
.end method

.method static synthetic access$14700(Lcom/google/android/gms/config/proto/Config$PackageTable;Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 9219
    invoke-direct {p0, p1}, Lcom/google/android/gms/config/proto/Config$PackageTable;->setConfigIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private addAllEntry(Ljava/lang/Iterable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/gms/config/proto/Config$KeyValue;",
            ">;)V"
        }
    .end annotation

    .line 9473
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$PackageTable;->ensureEntryIsMutable()V

    .line 9474
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageTable;->entry_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-void
.end method

.method private addEntry(ILcom/google/android/gms/config/proto/Config$KeyValue$Builder;)V
    .registers 4

    .line 9460
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$PackageTable;->ensureEntryIsMutable()V

    .line 9461
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageTable;->entry_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Lcom/google/android/gms/config/proto/Config$KeyValue$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/config/proto/Config$KeyValue;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addEntry(ILcom/google/android/gms/config/proto/Config$KeyValue;)V
    .registers 4

    if-eqz p2, :cond_b

    .line 9434
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$PackageTable;->ensureEntryIsMutable()V

    .line 9435
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageTable;->entry_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void

    .line 9432
    :cond_b
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private addEntry(Lcom/google/android/gms/config/proto/Config$KeyValue$Builder;)V
    .registers 3

    .line 9447
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$PackageTable;->ensureEntryIsMutable()V

    .line 9448
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageTable;->entry_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Lcom/google/android/gms/config/proto/Config$KeyValue$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/config/proto/Config$KeyValue;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addEntry(Lcom/google/android/gms/config/proto/Config$KeyValue;)V
    .registers 3

    if-eqz p1, :cond_b

    .line 9418
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$PackageTable;->ensureEntryIsMutable()V

    .line 9419
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageTable;->entry_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void

    .line 9416
    :cond_b
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private clearConfigId()V
    .registers 2

    .line 9557
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$PackageTable;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/android/gms/config/proto/Config$PackageTable;->bitField0_:I

    .line 9558
    invoke-static {}, Lcom/google/android/gms/config/proto/Config$PackageTable;->getDefaultInstance()Lcom/google/android/gms/config/proto/Config$PackageTable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/config/proto/Config$PackageTable;->getConfigId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageTable;->configId_:Ljava/lang/String;

    return-void
.end method

.method private clearEntry()V
    .registers 2

    .line 9486
    invoke-static {}, Lcom/google/android/gms/config/proto/Config$PackageTable;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageTable;->entry_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearPackageName()V
    .registers 2

    .line 9291
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$PackageTable;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/android/gms/config/proto/Config$PackageTable;->bitField0_:I

    .line 9292
    invoke-static {}, Lcom/google/android/gms/config/proto/Config$PackageTable;->getDefaultInstance()Lcom/google/android/gms/config/proto/Config$PackageTable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/config/proto/Config$PackageTable;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageTable;->packageName_:Ljava/lang/String;

    return-void
.end method

.method private ensureEntryIsMutable()V
    .registers 2

    .line 9371
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageTable;->entry_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_10

    .line 9372
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageTable;->entry_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 9373
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageTable;->entry_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_10
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/android/gms/config/proto/Config$PackageTable;
    .registers 1

    .line 10112
    sget-object v0, Lcom/google/android/gms/config/proto/Config$PackageTable;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$PackageTable;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/android/gms/config/proto/Config$PackageTable$Builder;
    .registers 1

    .line 9674
    sget-object v0, Lcom/google/android/gms/config/proto/Config$PackageTable;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$PackageTable;

    invoke-virtual {v0}, Lcom/google/android/gms/config/proto/Config$PackageTable;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/config/proto/Config$PackageTable$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/android/gms/config/proto/Config$PackageTable;)Lcom/google/android/gms/config/proto/Config$PackageTable$Builder;
    .registers 2

    .line 9677
    sget-object v0, Lcom/google/android/gms/config/proto/Config$PackageTable;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$PackageTable;

    invoke-virtual {v0}, Lcom/google/android/gms/config/proto/Config$PackageTable;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/config/proto/Config$PackageTable$Builder;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/config/proto/Config$PackageTable$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/config/proto/Config$PackageTable$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/android/gms/config/proto/Config$PackageTable;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9651
    sget-object v0, Lcom/google/android/gms/config/proto/Config$PackageTable;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$PackageTable;

    invoke-static {v0, p0}, Lcom/google/android/gms/config/proto/Config$PackageTable;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/config/proto/Config$PackageTable;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/gms/config/proto/Config$PackageTable;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9657
    sget-object v0, Lcom/google/android/gms/config/proto/Config$PackageTable;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$PackageTable;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/config/proto/Config$PackageTable;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/config/proto/Config$PackageTable;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/android/gms/config/proto/Config$PackageTable;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9615
    sget-object v0, Lcom/google/android/gms/config/proto/Config$PackageTable;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$PackageTable;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/config/proto/Config$PackageTable;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/gms/config/proto/Config$PackageTable;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9622
    sget-object v0, Lcom/google/android/gms/config/proto/Config$PackageTable;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$PackageTable;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/config/proto/Config$PackageTable;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/android/gms/config/proto/Config$PackageTable;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9662
    sget-object v0, Lcom/google/android/gms/config/proto/Config$PackageTable;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$PackageTable;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/config/proto/Config$PackageTable;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/gms/config/proto/Config$PackageTable;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9669
    sget-object v0, Lcom/google/android/gms/config/proto/Config$PackageTable;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$PackageTable;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/config/proto/Config$PackageTable;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/android/gms/config/proto/Config$PackageTable;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9639
    sget-object v0, Lcom/google/android/gms/config/proto/Config$PackageTable;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$PackageTable;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/config/proto/Config$PackageTable;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/gms/config/proto/Config$PackageTable;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9646
    sget-object v0, Lcom/google/android/gms/config/proto/Config$PackageTable;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$PackageTable;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/config/proto/Config$PackageTable;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/android/gms/config/proto/Config$PackageTable;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9627
    sget-object v0, Lcom/google/android/gms/config/proto/Config$PackageTable;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$PackageTable;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/config/proto/Config$PackageTable;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/gms/config/proto/Config$PackageTable;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9634
    sget-object v0, Lcom/google/android/gms/config/proto/Config$PackageTable;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$PackageTable;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/config/proto/Config$PackageTable;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/gms/config/proto/Config$PackageTable;",
            ">;"
        }
    .end annotation

    .line 10118
    sget-object v0, Lcom/google/android/gms/config/proto/Config$PackageTable;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$PackageTable;

    invoke-virtual {v0}, Lcom/google/android/gms/config/proto/Config$PackageTable;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeEntry(I)V
    .registers 3

    .line 9497
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$PackageTable;->ensureEntryIsMutable()V

    .line 9498
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageTable;->entry_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setConfigId(Ljava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_b

    .line 9546
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$PackageTable;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/config/proto/Config$PackageTable;->bitField0_:I

    .line 9547
    iput-object p1, p0, Lcom/google/android/gms/config/proto/Config$PackageTable;->configId_:Ljava/lang/String;

    return-void

    .line 9544
    :cond_b
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private setConfigIdBytes(Lcom/google/protobuf/ByteString;)V
    .registers 3

    if-eqz p1, :cond_f

    .line 9572
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$PackageTable;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/config/proto/Config$PackageTable;->bitField0_:I

    .line 9573
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/config/proto/Config$PackageTable;->configId_:Ljava/lang/String;

    return-void

    .line 9570
    :cond_f
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private setEntry(ILcom/google/android/gms/config/proto/Config$KeyValue$Builder;)V
    .registers 4

    .line 9403
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$PackageTable;->ensureEntryIsMutable()V

    .line 9404
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageTable;->entry_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Lcom/google/android/gms/config/proto/Config$KeyValue$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/config/proto/Config$KeyValue;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setEntry(ILcom/google/android/gms/config/proto/Config$KeyValue;)V
    .registers 4

    if-eqz p2, :cond_b

    .line 9390
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$PackageTable;->ensureEntryIsMutable()V

    .line 9391
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageTable;->entry_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 9388
    :cond_b
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private setPackageName(Ljava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_b

    .line 9279
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$PackageTable;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/config/proto/Config$PackageTable;->bitField0_:I

    .line 9280
    iput-object p1, p0, Lcom/google/android/gms/config/proto/Config$PackageTable;->packageName_:Ljava/lang/String;

    return-void

    .line 9277
    :cond_b
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private setPackageNameBytes(Lcom/google/protobuf/ByteString;)V
    .registers 3

    if-eqz p1, :cond_f

    .line 9307
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$PackageTable;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/config/proto/Config$PackageTable;->bitField0_:I

    .line 9308
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/config/proto/Config$PackageTable;->packageName_:Ljava/lang/String;

    return-void

    .line 9305
    :cond_f
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    .line 10006
    sget-object v0, Lcom/google/android/gms/config/proto/Config$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_102

    .line 10100
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 10091
    :pswitch_12
    sget-object p1, Lcom/google/android/gms/config/proto/Config$PackageTable;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_2b

    const-class p1, Lcom/google/android/gms/config/proto/Config$PackageTable;

    monitor-enter p1

    .line 10092
    :try_start_19
    sget-object p2, Lcom/google/android/gms/config/proto/Config$PackageTable;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p2, :cond_26

    .line 10093
    new-instance p2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/android/gms/config/proto/Config$PackageTable;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$PackageTable;

    invoke-direct {p2, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p2, Lcom/google/android/gms/config/proto/Config$PackageTable;->PARSER:Lcom/google/protobuf/Parser;

    .line 10095
    :cond_26
    monitor-exit p1

    goto :goto_2b

    :catchall_28
    move-exception p2

    monitor-exit p1
    :try_end_2a
    .catchall {:try_start_19 .. :try_end_2a} :catchall_28

    throw p2

    .line 10097
    :cond_2b
    :goto_2b
    sget-object p1, Lcom/google/android/gms/config/proto/Config$PackageTable;->PARSER:Lcom/google/protobuf/Parser;

    return-object p1

    .line 10037
    :pswitch_2e
    check-cast p2, Lcom/google/protobuf/CodedInputStream;

    .line 10039
    check-cast p3, Lcom/google/protobuf/ExtensionRegistryLite;

    const/4 p1, 0x0

    :cond_33
    :goto_33
    if-nez p1, :cond_ac

    .line 10044
    :try_start_35
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_88

    const/16 v2, 0xa

    if-eq v0, v2, :cond_7c

    const/16 v2, 0x12

    if-eq v0, v2, :cond_5c

    const/16 v2, 0x1a

    if-eq v0, v2, :cond_4f

    .line 10050
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/config/proto/Config$PackageTable;->parseUnknownField(ILcom/google/protobuf/CodedInputStream;)Z

    move-result v0

    if-nez v0, :cond_33

    goto :goto_88

    .line 10071
    :cond_4f
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v0

    .line 10072
    iget v1, p0, Lcom/google/android/gms/config/proto/Config$PackageTable;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/android/gms/config/proto/Config$PackageTable;->bitField0_:I

    .line 10073
    iput-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageTable;->configId_:Ljava/lang/String;

    goto :goto_33

    .line 10062
    :cond_5c
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageTable;->entry_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_6c

    .line 10063
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageTable;->entry_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 10064
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageTable;->entry_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 10066
    :cond_6c
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageTable;->entry_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 10067
    invoke-static {}, Lcom/google/android/gms/config/proto/Config$KeyValue;->parser()Lcom/google/protobuf/Parser;

    move-result-object v1

    invoke-virtual {p2, v1, p3}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/config/proto/Config$KeyValue;

    .line 10066
    invoke-interface {v0, v1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    goto :goto_33

    .line 10056
    :cond_7c
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v0

    .line 10057
    iget v2, p0, Lcom/google/android/gms/config/proto/Config$PackageTable;->bitField0_:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/config/proto/Config$PackageTable;->bitField0_:I

    .line 10058
    iput-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageTable;->packageName_:Ljava/lang/String;
    :try_end_87
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_35 .. :try_end_87} :catch_a0
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_87} :catch_8c
    .catchall {:try_start_35 .. :try_end_87} :catchall_8a

    goto :goto_33

    :cond_88
    :goto_88
    const/4 p1, 0x1

    goto :goto_33

    :catchall_8a
    move-exception p1

    goto :goto_ab

    :catch_8c
    move-exception p1

    .line 10081
    :try_start_8d
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 10083
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_a0
    move-exception p1

    .line 10079
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_ab
    .catchall {:try_start_8d .. :try_end_ab} :catchall_8a

    .line 10084
    :goto_ab
    throw p1

    .line 10088
    :cond_ac
    :pswitch_ac
    sget-object p1, Lcom/google/android/gms/config/proto/Config$PackageTable;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$PackageTable;

    return-object p1

    .line 10021
    :pswitch_af
    check-cast p2, Lcom/google/protobuf/GeneratedMessageLite$Visitor;

    .line 10022
    check-cast p3, Lcom/google/android/gms/config/proto/Config$PackageTable;

    .line 10024
    invoke-virtual {p0}, Lcom/google/android/gms/config/proto/Config$PackageTable;->hasPackageName()Z

    move-result p1

    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageTable;->packageName_:Ljava/lang/String;

    .line 10025
    invoke-virtual {p3}, Lcom/google/android/gms/config/proto/Config$PackageTable;->hasPackageName()Z

    move-result v1

    iget-object v2, p3, Lcom/google/android/gms/config/proto/Config$PackageTable;->packageName_:Ljava/lang/String;

    .line 10023
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/config/proto/Config$PackageTable;->packageName_:Ljava/lang/String;

    .line 10026
    iget-object p1, p0, Lcom/google/android/gms/config/proto/Config$PackageTable;->entry_:Lcom/google/protobuf/Internal$ProtobufList;

    iget-object v0, p3, Lcom/google/android/gms/config/proto/Config$PackageTable;->entry_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p2, p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitList(Lcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/config/proto/Config$PackageTable;->entry_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 10028
    invoke-virtual {p0}, Lcom/google/android/gms/config/proto/Config$PackageTable;->hasConfigId()Z

    move-result p1

    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageTable;->configId_:Ljava/lang/String;

    .line 10029
    invoke-virtual {p3}, Lcom/google/android/gms/config/proto/Config$PackageTable;->hasConfigId()Z

    move-result v1

    iget-object v2, p3, Lcom/google/android/gms/config/proto/Config$PackageTable;->configId_:Ljava/lang/String;

    .line 10027
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/config/proto/Config$PackageTable;->configId_:Ljava/lang/String;

    .line 10030
    sget-object p1, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;

    if-ne p2, p1, :cond_ec

    .line 10032
    iget p1, p0, Lcom/google/android/gms/config/proto/Config$PackageTable;->bitField0_:I

    iget p2, p3, Lcom/google/android/gms/config/proto/Config$PackageTable;->bitField0_:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/google/android/gms/config/proto/Config$PackageTable;->bitField0_:I

    :cond_ec
    return-object p0

    .line 10018
    :pswitch_ed
    new-instance p1, Lcom/google/android/gms/config/proto/Config$PackageTable$Builder;

    invoke-direct {p1, v0}, Lcom/google/android/gms/config/proto/Config$PackageTable$Builder;-><init>(Lcom/google/android/gms/config/proto/Config$1;)V

    return-object p1

    .line 10014
    :pswitch_f3
    iget-object p1, p0, Lcom/google/android/gms/config/proto/Config$PackageTable;->entry_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/google/protobuf/Internal$ProtobufList;->makeImmutable()V

    return-object v0

    .line 10011
    :pswitch_f9
    sget-object p1, Lcom/google/android/gms/config/proto/Config$PackageTable;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$PackageTable;

    return-object p1

    .line 10008
    :pswitch_fc
    new-instance p1, Lcom/google/android/gms/config/proto/Config$PackageTable;

    invoke-direct {p1}, Lcom/google/android/gms/config/proto/Config$PackageTable;-><init>()V

    return-object p1

    :pswitch_data_102
    .packed-switch 0x1
        :pswitch_fc
        :pswitch_f9
        :pswitch_f3
        :pswitch_ed
        :pswitch_af
        :pswitch_2e
        :pswitch_ac
        :pswitch_12
    .end packed-switch
.end method

.method public getConfigId()Ljava/lang/String;
    .registers 2

    .line 9521
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageTable;->configId_:Ljava/lang/String;

    return-object v0
.end method

.method public getConfigIdBytes()Lcom/google/protobuf/ByteString;
    .registers 2

    .line 9532
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageTable;->configId_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getEntry(I)Lcom/google/android/gms/config/proto/Config$KeyValue;
    .registers 3

    .line 9356
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageTable;->entry_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/config/proto/Config$KeyValue;

    return-object p1
.end method

.method public getEntryCount()I
    .registers 2

    .line 9345
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageTable;->entry_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getEntryList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/config/proto/Config$KeyValue;",
            ">;"
        }
    .end annotation

    .line 9322
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageTable;->entry_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getEntryOrBuilder(I)Lcom/google/android/gms/config/proto/Config$KeyValueOrBuilder;
    .registers 3

    .line 9368
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageTable;->entry_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/config/proto/Config$KeyValueOrBuilder;

    return-object p1
.end method

.method public getEntryOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/gms/config/proto/Config$KeyValueOrBuilder;",
            ">;"
        }
    .end annotation

    .line 9334
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageTable;->entry_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .line 9252
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageTable;->packageName_:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageNameBytes()Lcom/google/protobuf/ByteString;
    .registers 2

    .line 9264
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageTable;->packageName_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 5

    .line 9591
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$PackageTable;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 9595
    :cond_6
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$PackageTable;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_17

    .line 9597
    invoke-virtual {p0}, Lcom/google/android/gms/config/proto/Config$PackageTable;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    .line 9599
    :goto_18
    iget-object v1, p0, Lcom/google/android/gms/config/proto/Config$PackageTable;->entry_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v1}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v1

    const/4 v3, 0x2

    if-ge v2, v1, :cond_31

    .line 9600
    iget-object v1, p0, Lcom/google/android/gms/config/proto/Config$PackageTable;->entry_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 9601
    invoke-interface {v1, v2}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 9603
    :cond_31
    iget v1, p0, Lcom/google/android/gms/config/proto/Config$PackageTable;->bitField0_:I

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_40

    const/4 v1, 0x3

    .line 9605
    invoke-virtual {p0}, Lcom/google/android/gms/config/proto/Config$PackageTable;->getConfigId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9607
    :cond_40
    iget-object v1, p0, Lcom/google/android/gms/config/proto/Config$PackageTable;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSetLite;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 9608
    iput v0, p0, Lcom/google/android/gms/config/proto/Config$PackageTable;->memoizedSerializedSize:I

    return v0
.end method

.method public hasConfigId()Z
    .registers 3

    .line 9511
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$PackageTable;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public hasPackageName()Z
    .registers 3

    .line 9241
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$PackageTable;->bitField0_:I

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

    .line 9578
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$PackageTable;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_d

    .line 9579
    invoke-virtual {p0}, Lcom/google/android/gms/config/proto/Config$PackageTable;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    :cond_d
    const/4 v0, 0x0

    .line 9581
    :goto_e
    iget-object v1, p0, Lcom/google/android/gms/config/proto/Config$PackageTable;->entry_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v1}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v0, v1, :cond_25

    .line 9582
    iget-object v1, p0, Lcom/google/android/gms/config/proto/Config$PackageTable;->entry_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v1, v0}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 9584
    :cond_25
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$PackageTable;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_32

    const/4 v0, 0x3

    .line 9585
    invoke-virtual {p0}, Lcom/google/android/gms/config/proto/Config$PackageTable;->getConfigId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 9587
    :cond_32
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageTable;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSetLite;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
