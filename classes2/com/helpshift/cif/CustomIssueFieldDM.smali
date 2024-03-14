.class public Lcom/helpshift/cif/CustomIssueFieldDM;
.super Ljava/lang/Object;
.source "CustomIssueFieldDM.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Helpshift_CIF_DM"


# instance fields
.field private customIssueFieldDAO:Lcom/helpshift/cif/dao/CustomIssueFieldDAO;

.field private domain:Lcom/helpshift/common/domain/Domain;

.field private jsonifier:Lcom/helpshift/common/platform/Jsonifier;


# direct methods
.method public constructor <init>(Lcom/helpshift/common/domain/Domain;Lcom/helpshift/common/platform/Platform;)V
    .registers 3

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/helpshift/cif/CustomIssueFieldDM;->domain:Lcom/helpshift/common/domain/Domain;

    .line 32
    invoke-interface {p2}, Lcom/helpshift/common/platform/Platform;->getCustomIssueFieldDAO()Lcom/helpshift/cif/dao/CustomIssueFieldDAO;

    move-result-object p1

    iput-object p1, p0, Lcom/helpshift/cif/CustomIssueFieldDM;->customIssueFieldDAO:Lcom/helpshift/cif/dao/CustomIssueFieldDAO;

    .line 33
    invoke-interface {p2}, Lcom/helpshift/common/platform/Platform;->getJsonifier()Lcom/helpshift/common/platform/Jsonifier;

    move-result-object p1

    iput-object p1, p0, Lcom/helpshift/cif/CustomIssueFieldDM;->jsonifier:Lcom/helpshift/common/platform/Jsonifier;

    return-void
.end method

.method static synthetic access$000(Lcom/helpshift/cif/CustomIssueFieldDM;Ljava/util/Map;)Ljava/util/ArrayList;
    .registers 2

    .line 23
    invoke-direct {p0, p1}, Lcom/helpshift/cif/CustomIssueFieldDM;->convertMapToDTOs(Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/helpshift/cif/CustomIssueFieldDM;)Lcom/helpshift/cif/dao/CustomIssueFieldDAO;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/helpshift/cif/CustomIssueFieldDM;->customIssueFieldDAO:Lcom/helpshift/cif/dao/CustomIssueFieldDAO;

    return-object p0
.end method

.method private convertMapToDTOs(Ljava/util/Map;)Ljava/util/ArrayList;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/helpshift/cif/dto/CustomIssueFieldDTO;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 67
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x2

    .line 70
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_12
    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 72
    invoke-static {v3}, Lcom/helpshift/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_25

    goto :goto_12

    .line 76
    :cond_25
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    if-eqz v4, :cond_12

    .line 78
    array-length v5, v4

    if-ge v5, v1, :cond_31

    goto :goto_12

    :cond_31
    const/4 v5, 0x0

    .line 82
    aget-object v5, v4, v5

    .line 84
    invoke-static {v5}, Lcom/helpshift/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3b

    goto :goto_12

    :cond_3b
    const/4 v6, 0x1

    .line 87
    array-length v7, v4

    invoke-static {v4, v6, v7}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 88
    new-instance v6, Lcom/helpshift/cif/dto/CustomIssueFieldDTO;

    invoke-direct {v6, v3, v5, v4}, Lcom/helpshift/cif/dto/CustomIssueFieldDTO;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 89
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_4c
    return-object v0
.end method


# virtual methods
.method public getCustomIssueFieldData()Ljava/lang/Object;
    .registers 5

    .line 37
    iget-object v0, p0, Lcom/helpshift/cif/CustomIssueFieldDM;->customIssueFieldDAO:Lcom/helpshift/cif/dao/CustomIssueFieldDAO;

    invoke-interface {v0}, Lcom/helpshift/cif/dao/CustomIssueFieldDAO;->getCustomIssueFields()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_32

    .line 38
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_10

    goto :goto_32

    .line 44
    :cond_10
    :try_start_10
    iget-object v2, p0, Lcom/helpshift/cif/CustomIssueFieldDM;->jsonifier:Lcom/helpshift/common/platform/Jsonifier;

    invoke-interface {v2, v0}, Lcom/helpshift/common/platform/Jsonifier;->jsonifyCustomIssueFieldDTOList(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1
    :try_end_16
    .catch Lcom/helpshift/common/exception/RootAPIException; {:try_start_10 .. :try_end_16} :catch_17

    goto :goto_32

    :catch_17
    move-exception v0

    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception when jsonify data : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/helpshift/common/exception/RootAPIException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Helpshift_CIF_DM"

    invoke-static {v2, v0}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_32
    :goto_32
    return-object v1
.end method

.method public setCustomIssueFieldData(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/helpshift/cif/CustomIssueFieldDM;->domain:Lcom/helpshift/common/domain/Domain;

    new-instance v1, Lcom/helpshift/cif/CustomIssueFieldDM$1;

    invoke-direct {v1, p0, p1}, Lcom/helpshift/cif/CustomIssueFieldDM$1;-><init>(Lcom/helpshift/cif/CustomIssueFieldDM;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lcom/helpshift/common/domain/Domain;->runParallel(Lcom/helpshift/common/domain/F;)V

    return-void
.end method
