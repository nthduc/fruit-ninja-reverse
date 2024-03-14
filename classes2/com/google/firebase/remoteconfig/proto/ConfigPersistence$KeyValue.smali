.class public final Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "com.google.firebase:firebase-config@@19.1.4"

# interfaces
.implements Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValueOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/remoteconfig/proto/ConfigPersistence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KeyValue"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;",
        "Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue$Builder;",
        ">;",
        "Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValueOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;

.field public static final KEY_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;",
            ">;"
        }
    .end annotation
.end field

.field public static final VALUE_FIELD_NUMBER:I = 0x2


# instance fields
.field private bitField0_:I

.field private key_:Ljava/lang/String;

.field private value_:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1376
    new-instance v0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;

    invoke-direct {v0}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;-><init>()V

    sput-object v0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;->DEFAULT_INSTANCE:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;

    .line 1377
    sget-object v0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;->DEFAULT_INSTANCE:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;

    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1008
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 1009
    iput-object v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;->key_:Ljava/lang/String;

    .line 1010
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;->value_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$2700()Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;
    .registers 1

    .line 1003
    sget-object v0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;->DEFAULT_INSTANCE:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;Ljava/lang/String;)V
    .registers 2

    .line 1003
    invoke-direct {p0, p1}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;->setKey(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;)V
    .registers 1

    .line 1003
    invoke-direct {p0}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;->clearKey()V

    return-void
.end method

.method static synthetic access$3000(Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 1003
    invoke-direct {p0, p1}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;->setKeyBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 1003
    invoke-direct {p0, p1}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;->setValue(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;)V
    .registers 1

    .line 1003
    invoke-direct {p0}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;->clearValue()V

    return-void
.end method

.method private clearKey()V
    .registers 2

    .line 1049
    iget v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;->bitField0_:I

    .line 1050
    invoke-static {}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;->getDefaultInstance()Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;->key_:Ljava/lang/String;

    return-void
.end method

.method private clearValue()V
    .registers 2

    .line 1092
    iget v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;->bitField0_:I

    .line 1093
    invoke-static {}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;->getDefaultInstance()Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;->getValue()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;->value_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;
    .registers 1

    .line 1381
    sget-object v0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;->DEFAULT_INSTANCE:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue$Builder;
    .registers 1

    .line 1187
    sget-object v0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;->DEFAULT_INSTANCE:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;

    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;)Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue$Builder;
    .registers 2

    .line 1190
    sget-object v0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;->DEFAULT_INSTANCE:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;

    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue$Builder;

    invoke-virtual {v0, p0}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1164
    sget-object v0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;->DEFAULT_INSTANCE:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;

    invoke-static {v0, p0}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1170
    sget-object v0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;->DEFAULT_INSTANCE:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;

    invoke-static {v0, p0, p1}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1128
    sget-object v0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;->DEFAULT_INSTANCE:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1135
    sget-object v0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;->DEFAULT_INSTANCE:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1175
    sget-object v0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;->DEFAULT_INSTANCE:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1182
    sget-object v0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;->DEFAULT_INSTANCE:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1152
    sget-object v0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;->DEFAULT_INSTANCE:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1159
    sget-object v0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;->DEFAULT_INSTANCE:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1140
    sget-object v0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;->DEFAULT_INSTANCE:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1147
    sget-object v0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;->DEFAULT_INSTANCE:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;",
            ">;"
        }
    .end annotation

    .line 1387
    sget-object v0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;->DEFAULT_INSTANCE:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;

    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setKey(Ljava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_b

    .line 1042
    iget v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;->bitField0_:I

    .line 1043
    iput-object p1, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;->key_:Ljava/lang/String;

    return-void

    .line 1040
    :cond_b
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private setKeyBytes(Lcom/google/protobuf/ByteString;)V
    .registers 3

    if-eqz p1, :cond_f

    .line 1060
    iget v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;->bitField0_:I

    .line 1061
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;->key_:Ljava/lang/String;

    return-void

    .line 1058
    :cond_f
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private setValue(Lcom/google/protobuf/ByteString;)V
    .registers 3

    if-eqz p1, :cond_b

    .line 1085
    iget v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;->bitField0_:I

    .line 1086
    iput-object p1, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;->value_:Lcom/google/protobuf/ByteString;

    return-void

    .line 1083
    :cond_b
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    .line 1287
    sget-object v0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_d0

    .line 1369
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 1360
    :pswitch_12
    sget-object p1, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_2b

    const-class p1, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;

    monitor-enter p1

    .line 1361
    :try_start_19
    sget-object p2, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p2, :cond_26

    .line 1362
    new-instance p2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;->DEFAULT_INSTANCE:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;

    invoke-direct {p2, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p2, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;->PARSER:Lcom/google/protobuf/Parser;

    .line 1364
    :cond_26
    monitor-exit p1

    goto :goto_2b

    :catchall_28
    move-exception p2

    monitor-exit p1
    :try_end_2a
    .catchall {:try_start_19 .. :try_end_2a} :catchall_28

    throw p2

    .line 1366
    :cond_2b
    :goto_2b
    sget-object p1, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;->PARSER:Lcom/google/protobuf/Parser;

    return-object p1

    .line 1316
    :pswitch_2e
    check-cast p2, Lcom/google/protobuf/CodedInputStream;

    .line 1318
    check-cast p3, Lcom/google/protobuf/ExtensionRegistryLite;

    const/4 p1, 0x0

    :cond_33
    :goto_33
    if-nez p1, :cond_88

    .line 1323
    :try_start_35
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_64

    const/16 v1, 0xa

    if-eq p3, v1, :cond_58

    const/16 v1, 0x12

    if-eq p3, v1, :cond_4b

    .line 1329
    invoke-virtual {p0, p3, p2}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;->parseUnknownField(ILcom/google/protobuf/CodedInputStream;)Z

    move-result p3

    if-nez p3, :cond_33

    goto :goto_64

    .line 1341
    :cond_4b
    iget p3, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;->bitField0_:I

    or-int/lit8 p3, p3, 0x2

    iput p3, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;->bitField0_:I

    .line 1342
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object p3

    iput-object p3, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;->value_:Lcom/google/protobuf/ByteString;

    goto :goto_33

    .line 1335
    :cond_58
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object p3

    .line 1336
    iget v1, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;->bitField0_:I

    .line 1337
    iput-object p3, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;->key_:Ljava/lang/String;
    :try_end_63
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_35 .. :try_end_63} :catch_7c
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_63} :catch_68
    .catchall {:try_start_35 .. :try_end_63} :catchall_66

    goto :goto_33

    :cond_64
    :goto_64
    const/4 p1, 0x1

    goto :goto_33

    :catchall_66
    move-exception p1

    goto :goto_87

    :catch_68
    move-exception p1

    .line 1350
    :try_start_69
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 1352
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_7c
    move-exception p1

    .line 1348
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_87
    .catchall {:try_start_69 .. :try_end_87} :catchall_66

    .line 1353
    :goto_87
    throw p1

    .line 1357
    :cond_88
    :pswitch_88
    sget-object p1, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;->DEFAULT_INSTANCE:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;

    return-object p1

    .line 1301
    :pswitch_8b
    check-cast p2, Lcom/google/protobuf/GeneratedMessageLite$Visitor;

    .line 1302
    check-cast p3, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;

    .line 1304
    invoke-virtual {p0}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;->hasKey()Z

    move-result p1

    iget-object v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;->key_:Ljava/lang/String;

    .line 1305
    invoke-virtual {p3}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;->hasKey()Z

    move-result v1

    iget-object v2, p3, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;->key_:Ljava/lang/String;

    .line 1303
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;->key_:Ljava/lang/String;

    .line 1307
    invoke-virtual {p0}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;->hasValue()Z

    move-result p1

    iget-object v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;->value_:Lcom/google/protobuf/ByteString;

    .line 1308
    invoke-virtual {p3}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;->hasValue()Z

    move-result v1

    iget-object v2, p3, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;->value_:Lcom/google/protobuf/ByteString;

    .line 1306
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitByteString(ZLcom/google/protobuf/ByteString;ZLcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;->value_:Lcom/google/protobuf/ByteString;

    .line 1309
    sget-object p1, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;

    if-ne p2, p1, :cond_be

    .line 1311
    iget p1, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;->bitField0_:I

    iget p2, p3, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;->bitField0_:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;->bitField0_:I

    :cond_be
    return-object p0

    .line 1298
    :pswitch_bf
    new-instance p1, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue$Builder;

    invoke-direct {p1, v0}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue$Builder;-><init>(Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$1;)V

    return-object p1

    :pswitch_c5
    return-object v0

    .line 1292
    :pswitch_c6
    sget-object p1, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;->DEFAULT_INSTANCE:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;

    return-object p1

    .line 1289
    :pswitch_c9
    new-instance p1, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;

    invoke-direct {p1}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;-><init>()V

    return-object p1

    nop

    :pswitch_data_d0
    .packed-switch 0x1
        :pswitch_c9
        :pswitch_c6
        :pswitch_c5
        :pswitch_bf
        :pswitch_8b
        :pswitch_2e
        :pswitch_88
        :pswitch_12
    .end packed-switch
.end method

.method public getKey()Ljava/lang/String;
    .registers 2

    .line 1025
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;->key_:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyBytes()Lcom/google/protobuf/ByteString;
    .registers 2

    .line 1032
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;->key_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .line 1108
    iget v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    :cond_6
    const/4 v0, 0x0

    .line 1112
    iget v1, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_16

    .line 1114
    invoke-virtual {p0}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1116
    :cond_16
    iget v1, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_23

    .line 1117
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;->value_:Lcom/google/protobuf/ByteString;

    .line 1118
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1120
    :cond_23
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSetLite;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 1121
    iput v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;->memoizedSerializedSize:I

    return v0
.end method

.method public getValue()Lcom/google/protobuf/ByteString;
    .registers 2

    .line 1076
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;->value_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public hasKey()Z
    .registers 3

    .line 1019
    iget v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public hasValue()Z
    .registers 3

    .line 1070
    iget v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;->bitField0_:I

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

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1098
    iget v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_d

    .line 1099
    invoke-virtual {p0}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 1101
    :cond_d
    iget v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_18

    .line 1102
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;->value_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1104
    :cond_18
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$KeyValue;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSetLite;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
