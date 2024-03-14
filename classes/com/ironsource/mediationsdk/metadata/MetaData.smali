.class public Lcom/ironsource/mediationsdk/metadata/MetaData;
.super Ljava/lang/Object;
.source "MetaData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;
    }
.end annotation


# instance fields
.field private mKey:Ljava/lang/String;

.field private mValue:Ljava/lang/String;

.field private mValueType:Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/ironsource/mediationsdk/metadata/MetaData;->mKey:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/ironsource/mediationsdk/metadata/MetaData;->mValue:Ljava/lang/String;

    .line 27
    sget-object p1, Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;->META_DATA_VALUE_STRING:Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;

    iput-object p1, p0, Lcom/ironsource/mediationsdk/metadata/MetaData;->mValueType:Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;)V
    .registers 4

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/ironsource/mediationsdk/metadata/MetaData;->mKey:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/ironsource/mediationsdk/metadata/MetaData;->mValue:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lcom/ironsource/mediationsdk/metadata/MetaData;->mValueType:Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;

    return-void
.end method


# virtual methods
.method public getMetaDataKey()Ljava/lang/String;
    .registers 2

    .line 31
    iget-object v0, p0, Lcom/ironsource/mediationsdk/metadata/MetaData;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getMetaDataValue()Ljava/lang/String;
    .registers 2

    .line 35
    iget-object v0, p0, Lcom/ironsource/mediationsdk/metadata/MetaData;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public getMetaDataValueType()Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;
    .registers 2

    .line 39
    iget-object v0, p0, Lcom/ironsource/mediationsdk/metadata/MetaData;->mValueType:Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;

    return-object v0
.end method
