.class public abstract Lorg/fourthline/cling/support/contentdirectory/AbstractContentDirectoryService;
.super Ljava/lang/Object;
.source "AbstractContentDirectoryService.java"


# annotations
.annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpService;
    serviceId = .subannotation Lorg/fourthline/cling/binding/annotations/UpnpServiceId;
        value = "ContentDirectory"
    .end subannotation
    serviceType = .subannotation Lorg/fourthline/cling/binding/annotations/UpnpServiceType;
        value = "ContentDirectory"
        version = 0x1
    .end subannotation
.end annotation

.annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpStateVariables;
    value = {
        .subannotation Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;
            datatype = "string"
            name = "A_ARG_TYPE_ObjectID"
            sendEvents = false
        .end subannotation,
        .subannotation Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;
            datatype = "string"
            name = "A_ARG_TYPE_Result"
            sendEvents = false
        .end subannotation,
        .subannotation Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;
            allowedValuesEnum = Lorg/fourthline/cling/support/model/BrowseFlag;
            datatype = "string"
            name = "A_ARG_TYPE_BrowseFlag"
            sendEvents = false
        .end subannotation,
        .subannotation Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;
            datatype = "string"
            name = "A_ARG_TYPE_Filter"
            sendEvents = false
        .end subannotation,
        .subannotation Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;
            datatype = "string"
            name = "A_ARG_TYPE_SortCriteria"
            sendEvents = false
        .end subannotation,
        .subannotation Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;
            datatype = "ui4"
            name = "A_ARG_TYPE_Index"
            sendEvents = false
        .end subannotation,
        .subannotation Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;
            datatype = "ui4"
            name = "A_ARG_TYPE_Count"
            sendEvents = false
        .end subannotation,
        .subannotation Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;
            datatype = "ui4"
            name = "A_ARG_TYPE_UpdateID"
            sendEvents = false
        .end subannotation,
        .subannotation Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;
            datatype = "uri"
            name = "A_ARG_TYPE_URI"
            sendEvents = false
        .end subannotation,
        .subannotation Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;
            datatype = "string"
            name = "A_ARG_TYPE_SearchCriteria"
            sendEvents = false
        .end subannotation
    }
.end annotation


# static fields
.field public static final CAPS_WILDCARD:Ljava/lang/String; = "*"


# instance fields
.field protected final propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

.field private final searchCapabilities:Lorg/fourthline/cling/model/types/csv/CSV;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/fourthline/cling/model/types/csv/CSV",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;
        sendEvents = false
    .end annotation
.end field

.field private final sortCapabilities:Lorg/fourthline/cling/model/types/csv/CSV;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/fourthline/cling/model/types/csv/CSV",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;
        sendEvents = false
    .end annotation
.end field

.field private systemUpdateID:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;
    .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;
        defaultValue = "0"
        eventMaximumRateMilliseconds = 0xc8
        sendEvents = true
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 3

    .prologue
    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/fourthline/cling/support/contentdirectory/AbstractContentDirectoryService;-><init>(Ljava/util/List;Ljava/util/List;Ljava/beans/PropertyChangeSupport;)V

    .line 118
    return-void
.end method

.method protected constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/fourthline/cling/support/contentdirectory/AbstractContentDirectoryService;-><init>(Ljava/util/List;Ljava/util/List;Ljava/beans/PropertyChangeSupport;)V

    .line 122
    return-void
.end method

.method protected constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/beans/PropertyChangeSupport;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/beans/PropertyChangeSupport;",
            ")V"
        }
    .end annotation

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    new-instance v0, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    iput-object v0, p0, Lorg/fourthline/cling/support/contentdirectory/AbstractContentDirectoryService;->systemUpdateID:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    .line 126
    if-eqz p3, :cond_0

    :goto_0
    iput-object p3, p0, Lorg/fourthline/cling/support/contentdirectory/AbstractContentDirectoryService;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    .line 127
    new-instance v0, Lorg/fourthline/cling/model/types/csv/CSVString;

    invoke-direct {v0}, Lorg/fourthline/cling/model/types/csv/CSVString;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/support/contentdirectory/AbstractContentDirectoryService;->searchCapabilities:Lorg/fourthline/cling/model/types/csv/CSV;

    .line 128
    iget-object v0, p0, Lorg/fourthline/cling/support/contentdirectory/AbstractContentDirectoryService;->searchCapabilities:Lorg/fourthline/cling/model/types/csv/CSV;

    invoke-virtual {v0, p1}, Lorg/fourthline/cling/model/types/csv/CSV;->addAll(Ljava/util/Collection;)Z

    .line 129
    new-instance v0, Lorg/fourthline/cling/model/types/csv/CSVString;

    invoke-direct {v0}, Lorg/fourthline/cling/model/types/csv/CSVString;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/support/contentdirectory/AbstractContentDirectoryService;->sortCapabilities:Lorg/fourthline/cling/model/types/csv/CSV;

    .line 130
    iget-object v0, p0, Lorg/fourthline/cling/support/contentdirectory/AbstractContentDirectoryService;->sortCapabilities:Lorg/fourthline/cling/model/types/csv/CSV;

    invoke-virtual {v0, p2}, Lorg/fourthline/cling/model/types/csv/CSV;->addAll(Ljava/util/Collection;)Z

    .line 131
    return-void

    .line 126
    :cond_0
    new-instance p3, Ljava/beans/PropertyChangeSupport;

    invoke-direct {p3, p0}, Ljava/beans/PropertyChangeSupport;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public browse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Ljava/lang/String;)Lorg/fourthline/cling/support/model/BrowseResult;
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpInputArgument;
            aliases = {
                "ContainerID"
            }
            name = "ObjectID"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpInputArgument;
            name = "BrowseFlag"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpInputArgument;
            name = "Filter"
        .end annotation
    .end param
    .param p4    # Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;
        .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpInputArgument;
            name = "StartingIndex"
            stateVariable = "A_ARG_TYPE_Index"
        .end annotation
    .end param
    .param p5    # Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;
        .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpInputArgument;
            name = "RequestedCount"
            stateVariable = "A_ARG_TYPE_Count"
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpInputArgument;
            name = "SortCriteria"
        .end annotation
    .end param
    .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpAction;
        out = {
            .subannotation Lorg/fourthline/cling/binding/annotations/UpnpOutputArgument;
                getterName = "getResult"
                name = "Result"
                stateVariable = "A_ARG_TYPE_Result"
            .end subannotation,
            .subannotation Lorg/fourthline/cling/binding/annotations/UpnpOutputArgument;
                getterName = "getCount"
                name = "NumberReturned"
                stateVariable = "A_ARG_TYPE_Count"
            .end subannotation,
            .subannotation Lorg/fourthline/cling/binding/annotations/UpnpOutputArgument;
                getterName = "getTotalMatches"
                name = "TotalMatches"
                stateVariable = "A_ARG_TYPE_Count"
            .end subannotation,
            .subannotation Lorg/fourthline/cling/binding/annotations/UpnpOutputArgument;
                getterName = "getContainerUpdateID"
                name = "UpdateID"
                stateVariable = "A_ARG_TYPE_UpdateID"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 194
    :try_start_0
    invoke-static {p6}, Lorg/fourthline/cling/support/model/SortCriterion;->valueOf(Ljava/lang/String;)[Lorg/fourthline/cling/support/model/SortCriterion;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 202
    :try_start_1
    invoke-static {p2}, Lorg/fourthline/cling/support/model/BrowseFlag;->valueOrNullOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/BrowseFlag;

    move-result-object v2

    .line 204
    invoke-virtual {p4}, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;->getValue()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p5}, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;->getValue()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    .line 200
    invoke-virtual/range {v0 .. v8}, Lorg/fourthline/cling/support/contentdirectory/AbstractContentDirectoryService;->browse(Ljava/lang/String;Lorg/fourthline/cling/support/model/BrowseFlag;Ljava/lang/String;JJ[Lorg/fourthline/cling/support/model/SortCriterion;)Lorg/fourthline/cling/support/model/BrowseResult;
    :try_end_1
    .catch Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    return-object v0

    .line 195
    :catch_0
    move-exception v0

    .line 196
    new-instance v1, Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryException;

    sget-object v2, Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryErrorCode;->UNSUPPORTED_SORT_CRITERIA:Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryErrorCode;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryException;-><init>(Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryErrorCode;Ljava/lang/String;)V

    throw v1

    .line 207
    :catch_1
    move-exception v0

    throw v0

    .line 209
    :catch_2
    move-exception v0

    .line 210
    new-instance v1, Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryException;

    sget-object v2, Lorg/fourthline/cling/model/types/ErrorCode;->ACTION_FAILED:Lorg/fourthline/cling/model/types/ErrorCode;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryException;-><init>(Lorg/fourthline/cling/model/types/ErrorCode;Ljava/lang/String;)V

    throw v1
.end method

.method public abstract browse(Ljava/lang/String;Lorg/fourthline/cling/support/model/BrowseFlag;Ljava/lang/String;JJ[Lorg/fourthline/cling/support/model/SortCriterion;)Lorg/fourthline/cling/support/model/BrowseResult;
.end method

.method protected declared-synchronized changeSystemUpdateID()V
    .locals 4

    .prologue
    .line 160
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/AbstractContentDirectoryService;->getSystemUpdateID()Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;->getValue()Ljava/lang/Long;

    move-result-object v0

    .line 161
    iget-object v1, p0, Lorg/fourthline/cling/support/contentdirectory/AbstractContentDirectoryService;->systemUpdateID:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;->increment(Z)Lorg/fourthline/cling/model/types/UnsignedVariableInteger;

    .line 162
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/AbstractContentDirectoryService;->getPropertyChangeSupport()Ljava/beans/PropertyChangeSupport;

    move-result-object v1

    .line 163
    const-string v2, "SystemUpdateID"

    .line 165
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/AbstractContentDirectoryService;->getSystemUpdateID()Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    move-result-object v3

    invoke-virtual {v3}, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;->getValue()Ljava/lang/Long;

    move-result-object v3

    .line 162
    invoke-virtual {v1, v2, v0, v3}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    monitor-exit p0

    return-void

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPropertyChangeSupport()Ljava/beans/PropertyChangeSupport;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lorg/fourthline/cling/support/contentdirectory/AbstractContentDirectoryService;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    return-object v0
.end method

.method public getSearchCapabilities()Lorg/fourthline/cling/model/types/csv/CSV;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/fourthline/cling/model/types/csv/CSV",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpAction;
        out = {
            .subannotation Lorg/fourthline/cling/binding/annotations/UpnpOutputArgument;
                name = "SearchCaps"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lorg/fourthline/cling/support/contentdirectory/AbstractContentDirectoryService;->searchCapabilities:Lorg/fourthline/cling/model/types/csv/CSV;

    return-object v0
.end method

.method public getSortCapabilities()Lorg/fourthline/cling/model/types/csv/CSV;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/fourthline/cling/model/types/csv/CSV",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpAction;
        out = {
            .subannotation Lorg/fourthline/cling/binding/annotations/UpnpOutputArgument;
                name = "SortCaps"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Lorg/fourthline/cling/support/contentdirectory/AbstractContentDirectoryService;->sortCapabilities:Lorg/fourthline/cling/model/types/csv/CSV;

    return-object v0
.end method

.method public declared-synchronized getSystemUpdateID()Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;
    .locals 1
    .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpAction;
        out = {
            .subannotation Lorg/fourthline/cling/binding/annotations/UpnpOutputArgument;
                name = "Id"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 145
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/support/contentdirectory/AbstractContentDirectoryService;->systemUpdateID:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public search(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ[Lorg/fourthline/cling/support/model/SortCriterion;)Lorg/fourthline/cling/support/model/BrowseResult;
    .locals 6

    .prologue
    .line 285
    :try_start_0
    new-instance v0, Lorg/fourthline/cling/support/model/BrowseResult;

    new-instance v1, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;

    invoke-direct {v1}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;-><init>()V

    new-instance v2, Lorg/fourthline/cling/support/model/DIDLContent;

    invoke-direct {v2}, Lorg/fourthline/cling/support/model/DIDLContent;-><init>()V

    invoke-virtual {v1, v2}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->generate(Lorg/fourthline/cling/support/model/DIDLContent;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Lorg/fourthline/cling/support/model/BrowseResult;-><init>(Ljava/lang/String;JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 286
    :catch_0
    move-exception v0

    .line 287
    new-instance v1, Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryException;

    sget-object v2, Lorg/fourthline/cling/model/types/ErrorCode;->ACTION_FAILED:Lorg/fourthline/cling/model/types/ErrorCode;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryException;-><init>(Lorg/fourthline/cling/model/types/ErrorCode;Ljava/lang/String;)V

    throw v1
.end method

.method public search(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Ljava/lang/String;)Lorg/fourthline/cling/support/model/BrowseResult;
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpInputArgument;
            name = "ContainerID"
            stateVariable = "A_ARG_TYPE_ObjectID"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpInputArgument;
            name = "SearchCriteria"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpInputArgument;
            name = "Filter"
        .end annotation
    .end param
    .param p4    # Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;
        .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpInputArgument;
            name = "StartingIndex"
            stateVariable = "A_ARG_TYPE_Index"
        .end annotation
    .end param
    .param p5    # Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;
        .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpInputArgument;
            name = "RequestedCount"
            stateVariable = "A_ARG_TYPE_Count"
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpInputArgument;
            name = "SortCriteria"
        .end annotation
    .end param
    .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpAction;
        out = {
            .subannotation Lorg/fourthline/cling/binding/annotations/UpnpOutputArgument;
                getterName = "getResult"
                name = "Result"
                stateVariable = "A_ARG_TYPE_Result"
            .end subannotation,
            .subannotation Lorg/fourthline/cling/binding/annotations/UpnpOutputArgument;
                getterName = "getCount"
                name = "NumberReturned"
                stateVariable = "A_ARG_TYPE_Count"
            .end subannotation,
            .subannotation Lorg/fourthline/cling/binding/annotations/UpnpOutputArgument;
                getterName = "getTotalMatches"
                name = "TotalMatches"
                stateVariable = "A_ARG_TYPE_Count"
            .end subannotation,
            .subannotation Lorg/fourthline/cling/binding/annotations/UpnpOutputArgument;
                getterName = "getContainerUpdateID"
                name = "UpdateID"
                stateVariable = "A_ARG_TYPE_UpdateID"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 255
    :try_start_0
    invoke-static {p6}, Lorg/fourthline/cling/support/model/SortCriterion;->valueOf(Ljava/lang/String;)[Lorg/fourthline/cling/support/model/SortCriterion;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 265
    :try_start_1
    invoke-virtual {p4}, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;->getValue()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p5}, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;->getValue()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 261
    invoke-virtual/range {v0 .. v8}, Lorg/fourthline/cling/support/contentdirectory/AbstractContentDirectoryService;->search(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ[Lorg/fourthline/cling/support/model/SortCriterion;)Lorg/fourthline/cling/support/model/BrowseResult;
    :try_end_1
    .catch Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    return-object v0

    .line 256
    :catch_0
    move-exception v0

    .line 257
    new-instance v1, Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryException;

    sget-object v2, Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryErrorCode;->UNSUPPORTED_SORT_CRITERIA:Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryErrorCode;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryException;-><init>(Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryErrorCode;Ljava/lang/String;)V

    throw v1

    .line 268
    :catch_1
    move-exception v0

    throw v0

    .line 270
    :catch_2
    move-exception v0

    .line 271
    new-instance v1, Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryException;

    sget-object v2, Lorg/fourthline/cling/model/types/ErrorCode;->ACTION_FAILED:Lorg/fourthline/cling/model/types/ErrorCode;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryException;-><init>(Lorg/fourthline/cling/model/types/ErrorCode;Ljava/lang/String;)V

    throw v1
.end method
