.class public final Lcom/google/android/gms/config/proto/Config$NamedValue;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "com.google.firebase:firebase-config@@19.1.4"

# interfaces
.implements Lcom/google/android/gms/config/proto/Config$NamedValueOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/config/proto/Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NamedValue"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/config/proto/Config$NamedValue$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/android/gms/config/proto/Config$NamedValue;",
        "Lcom/google/android/gms/config/proto/Config$NamedValue$Builder;",
        ">;",
        "Lcom/google/android/gms/config/proto/Config$NamedValueOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$NamedValue;

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/gms/config/proto/Config$NamedValue;",
            ">;"
        }
    .end annotation
.end field

.field public static final VALUE_FIELD_NUMBER:I = 0x2


# instance fields
.field private bitField0_:I

.field private name_:Ljava/lang/String;

.field private value_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 5978
    new-instance v0, Lcom/google/android/gms/config/proto/Config$NamedValue;

    invoke-direct {v0}, Lcom/google/android/gms/config/proto/Config$NamedValue;-><init>()V

    sput-object v0, Lcom/google/android/gms/config/proto/Config$NamedValue;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$NamedValue;

    .line 5979
    sget-object v0, Lcom/google/android/gms/config/proto/Config$NamedValue;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$NamedValue;

    invoke-virtual {v0}, Lcom/google/android/gms/config/proto/Config$NamedValue;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 5567
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 5568
    iput-object v0, p0, Lcom/google/android/gms/config/proto/Config$NamedValue;->name_:Ljava/lang/String;

    .line 5569
    iput-object v0, p0, Lcom/google/android/gms/config/proto/Config$NamedValue;->value_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$8000()Lcom/google/android/gms/config/proto/Config$NamedValue;
    .registers 1

    .line 5562
    sget-object v0, Lcom/google/android/gms/config/proto/Config$NamedValue;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$NamedValue;

    return-object v0
.end method

.method static synthetic access$8100(Lcom/google/android/gms/config/proto/Config$NamedValue;Ljava/lang/String;)V
    .registers 2

    .line 5562
    invoke-direct {p0, p1}, Lcom/google/android/gms/config/proto/Config$NamedValue;->setName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8200(Lcom/google/android/gms/config/proto/Config$NamedValue;)V
    .registers 1

    .line 5562
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$NamedValue;->clearName()V

    return-void
.end method

.method static synthetic access$8300(Lcom/google/android/gms/config/proto/Config$NamedValue;Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 5562
    invoke-direct {p0, p1}, Lcom/google/android/gms/config/proto/Config$NamedValue;->setNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$8400(Lcom/google/android/gms/config/proto/Config$NamedValue;Ljava/lang/String;)V
    .registers 2

    .line 5562
    invoke-direct {p0, p1}, Lcom/google/android/gms/config/proto/Config$NamedValue;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8500(Lcom/google/android/gms/config/proto/Config$NamedValue;)V
    .registers 1

    .line 5562
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$NamedValue;->clearValue()V

    return-void
.end method

.method static synthetic access$8600(Lcom/google/android/gms/config/proto/Config$NamedValue;Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 5562
    invoke-direct {p0, p1}, Lcom/google/android/gms/config/proto/Config$NamedValue;->setValueBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearName()V
    .registers 2

    .line 5608
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$NamedValue;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/android/gms/config/proto/Config$NamedValue;->bitField0_:I

    .line 5609
    invoke-static {}, Lcom/google/android/gms/config/proto/Config$NamedValue;->getDefaultInstance()Lcom/google/android/gms/config/proto/Config$NamedValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/config/proto/Config$NamedValue;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/config/proto/Config$NamedValue;->name_:Ljava/lang/String;

    return-void
.end method

.method private clearValue()V
    .registers 2

    .line 5659
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$NamedValue;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/android/gms/config/proto/Config$NamedValue;->bitField0_:I

    .line 5660
    invoke-static {}, Lcom/google/android/gms/config/proto/Config$NamedValue;->getDefaultInstance()Lcom/google/android/gms/config/proto/Config$NamedValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/config/proto/Config$NamedValue;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/config/proto/Config$NamedValue;->value_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/android/gms/config/proto/Config$NamedValue;
    .registers 1

    .line 5983
    sget-object v0, Lcom/google/android/gms/config/proto/Config$NamedValue;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$NamedValue;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/android/gms/config/proto/Config$NamedValue$Builder;
    .registers 1

    .line 5765
    sget-object v0, Lcom/google/android/gms/config/proto/Config$NamedValue;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$NamedValue;

    invoke-virtual {v0}, Lcom/google/android/gms/config/proto/Config$NamedValue;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/config/proto/Config$NamedValue$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/android/gms/config/proto/Config$NamedValue;)Lcom/google/android/gms/config/proto/Config$NamedValue$Builder;
    .registers 2

    .line 5768
    sget-object v0, Lcom/google/android/gms/config/proto/Config$NamedValue;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$NamedValue;

    invoke-virtual {v0}, Lcom/google/android/gms/config/proto/Config$NamedValue;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/config/proto/Config$NamedValue$Builder;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/config/proto/Config$NamedValue$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/config/proto/Config$NamedValue$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/android/gms/config/proto/Config$NamedValue;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5742
    sget-object v0, Lcom/google/android/gms/config/proto/Config$NamedValue;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$NamedValue;

    invoke-static {v0, p0}, Lcom/google/android/gms/config/proto/Config$NamedValue;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/config/proto/Config$NamedValue;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/gms/config/proto/Config$NamedValue;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5748
    sget-object v0, Lcom/google/android/gms/config/proto/Config$NamedValue;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$NamedValue;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/config/proto/Config$NamedValue;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/config/proto/Config$NamedValue;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/android/gms/config/proto/Config$NamedValue;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5706
    sget-object v0, Lcom/google/android/gms/config/proto/Config$NamedValue;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$NamedValue;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/config/proto/Config$NamedValue;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/gms/config/proto/Config$NamedValue;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5713
    sget-object v0, Lcom/google/android/gms/config/proto/Config$NamedValue;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$NamedValue;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/config/proto/Config$NamedValue;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/android/gms/config/proto/Config$NamedValue;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5753
    sget-object v0, Lcom/google/android/gms/config/proto/Config$NamedValue;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$NamedValue;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/config/proto/Config$NamedValue;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/gms/config/proto/Config$NamedValue;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5760
    sget-object v0, Lcom/google/android/gms/config/proto/Config$NamedValue;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$NamedValue;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/config/proto/Config$NamedValue;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/android/gms/config/proto/Config$NamedValue;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5730
    sget-object v0, Lcom/google/android/gms/config/proto/Config$NamedValue;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$NamedValue;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/config/proto/Config$NamedValue;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/gms/config/proto/Config$NamedValue;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5737
    sget-object v0, Lcom/google/android/gms/config/proto/Config$NamedValue;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$NamedValue;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/config/proto/Config$NamedValue;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/android/gms/config/proto/Config$NamedValue;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5718
    sget-object v0, Lcom/google/android/gms/config/proto/Config$NamedValue;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$NamedValue;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/config/proto/Config$NamedValue;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/gms/config/proto/Config$NamedValue;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5725
    sget-object v0, Lcom/google/android/gms/config/proto/Config$NamedValue;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$NamedValue;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/config/proto/Config$NamedValue;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/gms/config/proto/Config$NamedValue;",
            ">;"
        }
    .end annotation

    .line 5989
    sget-object v0, Lcom/google/android/gms/config/proto/Config$NamedValue;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$NamedValue;

    invoke-virtual {v0}, Lcom/google/android/gms/config/proto/Config$NamedValue;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setName(Ljava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_b

    .line 5601
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$NamedValue;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/config/proto/Config$NamedValue;->bitField0_:I

    .line 5602
    iput-object p1, p0, Lcom/google/android/gms/config/proto/Config$NamedValue;->name_:Ljava/lang/String;

    return-void

    .line 5599
    :cond_b
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private setNameBytes(Lcom/google/protobuf/ByteString;)V
    .registers 3

    if-eqz p1, :cond_f

    .line 5619
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$NamedValue;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/config/proto/Config$NamedValue;->bitField0_:I

    .line 5620
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/config/proto/Config$NamedValue;->name_:Ljava/lang/String;

    return-void

    .line 5617
    :cond_f
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private setValue(Ljava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_b

    .line 5652
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$NamedValue;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/config/proto/Config$NamedValue;->bitField0_:I

    .line 5653
    iput-object p1, p0, Lcom/google/android/gms/config/proto/Config$NamedValue;->value_:Ljava/lang/String;

    return-void

    .line 5650
    :cond_b
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private setValueBytes(Lcom/google/protobuf/ByteString;)V
    .registers 3

    if-eqz p1, :cond_f

    .line 5670
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$NamedValue;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/config/proto/Config$NamedValue;->bitField0_:I

    .line 5671
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/config/proto/Config$NamedValue;->value_:Ljava/lang/String;

    return-void

    .line 5668
    :cond_f
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    .line 5888
    sget-object v0, Lcom/google/android/gms/config/proto/Config$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_d0

    .line 5971
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 5962
    :pswitch_12
    sget-object p1, Lcom/google/android/gms/config/proto/Config$NamedValue;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_2b

    const-class p1, Lcom/google/android/gms/config/proto/Config$NamedValue;

    monitor-enter p1

    .line 5963
    :try_start_19
    sget-object p2, Lcom/google/android/gms/config/proto/Config$NamedValue;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p2, :cond_26

    .line 5964
    new-instance p2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/android/gms/config/proto/Config$NamedValue;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$NamedValue;

    invoke-direct {p2, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p2, Lcom/google/android/gms/config/proto/Config$NamedValue;->PARSER:Lcom/google/protobuf/Parser;

    .line 5966
    :cond_26
    monitor-exit p1

    goto :goto_2b

    :catchall_28
    move-exception p2

    monitor-exit p1
    :try_end_2a
    .catchall {:try_start_19 .. :try_end_2a} :catchall_28

    throw p2

    .line 5968
    :cond_2b
    :goto_2b
    sget-object p1, Lcom/google/android/gms/config/proto/Config$NamedValue;->PARSER:Lcom/google/protobuf/Parser;

    return-object p1

    .line 5917
    :pswitch_2e
    check-cast p2, Lcom/google/protobuf/CodedInputStream;

    .line 5919
    check-cast p3, Lcom/google/protobuf/ExtensionRegistryLite;

    const/4 p1, 0x0

    :cond_33
    :goto_33
    if-nez p1, :cond_88

    .line 5924
    :try_start_35
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_64

    const/16 v1, 0xa

    if-eq p3, v1, :cond_58

    const/16 v1, 0x12

    if-eq p3, v1, :cond_4b

    .line 5930
    invoke-virtual {p0, p3, p2}, Lcom/google/android/gms/config/proto/Config$NamedValue;->parseUnknownField(ILcom/google/protobuf/CodedInputStream;)Z

    move-result p3

    if-nez p3, :cond_33

    goto :goto_64

    .line 5942
    :cond_4b
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object p3

    .line 5943
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$NamedValue;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/config/proto/Config$NamedValue;->bitField0_:I

    .line 5944
    iput-object p3, p0, Lcom/google/android/gms/config/proto/Config$NamedValue;->value_:Ljava/lang/String;

    goto :goto_33

    .line 5936
    :cond_58
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object p3

    .line 5937
    iget v1, p0, Lcom/google/android/gms/config/proto/Config$NamedValue;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/config/proto/Config$NamedValue;->bitField0_:I

    .line 5938
    iput-object p3, p0, Lcom/google/android/gms/config/proto/Config$NamedValue;->name_:Ljava/lang/String;
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

    .line 5952
    :try_start_69
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 5954
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_7c
    move-exception p1

    .line 5950
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_87
    .catchall {:try_start_69 .. :try_end_87} :catchall_66

    .line 5955
    :goto_87
    throw p1

    .line 5959
    :cond_88
    :pswitch_88
    sget-object p1, Lcom/google/android/gms/config/proto/Config$NamedValue;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$NamedValue;

    return-object p1

    .line 5902
    :pswitch_8b
    check-cast p2, Lcom/google/protobuf/GeneratedMessageLite$Visitor;

    .line 5903
    check-cast p3, Lcom/google/android/gms/config/proto/Config$NamedValue;

    .line 5905
    invoke-virtual {p0}, Lcom/google/android/gms/config/proto/Config$NamedValue;->hasName()Z

    move-result p1

    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$NamedValue;->name_:Ljava/lang/String;

    .line 5906
    invoke-virtual {p3}, Lcom/google/android/gms/config/proto/Config$NamedValue;->hasName()Z

    move-result v1

    iget-object v2, p3, Lcom/google/android/gms/config/proto/Config$NamedValue;->name_:Ljava/lang/String;

    .line 5904
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/config/proto/Config$NamedValue;->name_:Ljava/lang/String;

    .line 5908
    invoke-virtual {p0}, Lcom/google/android/gms/config/proto/Config$NamedValue;->hasValue()Z

    move-result p1

    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$NamedValue;->value_:Ljava/lang/String;

    .line 5909
    invoke-virtual {p3}, Lcom/google/android/gms/config/proto/Config$NamedValue;->hasValue()Z

    move-result v1

    iget-object v2, p3, Lcom/google/android/gms/config/proto/Config$NamedValue;->value_:Ljava/lang/String;

    .line 5907
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/config/proto/Config$NamedValue;->value_:Ljava/lang/String;

    .line 5910
    sget-object p1, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;

    if-ne p2, p1, :cond_be

    .line 5912
    iget p1, p0, Lcom/google/android/gms/config/proto/Config$NamedValue;->bitField0_:I

    iget p2, p3, Lcom/google/android/gms/config/proto/Config$NamedValue;->bitField0_:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/google/android/gms/config/proto/Config$NamedValue;->bitField0_:I

    :cond_be
    return-object p0

    .line 5899
    :pswitch_bf
    new-instance p1, Lcom/google/android/gms/config/proto/Config$NamedValue$Builder;

    invoke-direct {p1, v0}, Lcom/google/android/gms/config/proto/Config$NamedValue$Builder;-><init>(Lcom/google/android/gms/config/proto/Config$1;)V

    return-object p1

    :pswitch_c5
    return-object v0

    .line 5893
    :pswitch_c6
    sget-object p1, Lcom/google/android/gms/config/proto/Config$NamedValue;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$NamedValue;

    return-object p1

    .line 5890
    :pswitch_c9
    new-instance p1, Lcom/google/android/gms/config/proto/Config$NamedValue;

    invoke-direct {p1}, Lcom/google/android/gms/config/proto/Config$NamedValue;-><init>()V

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

.method public getName()Ljava/lang/String;
    .registers 2

    .line 5584
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$NamedValue;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .registers 2

    .line 5591
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$NamedValue;->name_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .line 5686
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$NamedValue;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    :cond_6
    const/4 v0, 0x0

    .line 5690
    iget v1, p0, Lcom/google/android/gms/config/proto/Config$NamedValue;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_16

    .line 5692
    invoke-virtual {p0}, Lcom/google/android/gms/config/proto/Config$NamedValue;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5694
    :cond_16
    iget v1, p0, Lcom/google/android/gms/config/proto/Config$NamedValue;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_25

    .line 5696
    invoke-virtual {p0}, Lcom/google/android/gms/config/proto/Config$NamedValue;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5698
    :cond_25
    iget-object v1, p0, Lcom/google/android/gms/config/proto/Config$NamedValue;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSetLite;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 5699
    iput v0, p0, Lcom/google/android/gms/config/proto/Config$NamedValue;->memoizedSerializedSize:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .line 5635
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$NamedValue;->value_:Ljava/lang/String;

    return-object v0
.end method

.method public getValueBytes()Lcom/google/protobuf/ByteString;
    .registers 2

    .line 5642
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$NamedValue;->value_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasName()Z
    .registers 3

    .line 5578
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$NamedValue;->bitField0_:I

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

    .line 5629
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$NamedValue;->bitField0_:I

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

    .line 5676
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$NamedValue;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_d

    .line 5677
    invoke-virtual {p0}, Lcom/google/android/gms/config/proto/Config$NamedValue;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 5679
    :cond_d
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$NamedValue;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1a

    .line 5680
    invoke-virtual {p0}, Lcom/google/android/gms/config/proto/Config$NamedValue;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 5682
    :cond_1a
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$NamedValue;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSetLite;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
