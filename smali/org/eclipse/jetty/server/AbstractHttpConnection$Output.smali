.class public Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;
.super Lorg/eclipse/jetty/server/HttpOutput;
.source "AbstractHttpConnection.java"


# instance fields
.field final synthetic this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/server/AbstractHttpConnection;)V
    .locals 0

    .prologue
    .line 1052
    iput-object p1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    .line 1053
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/server/HttpOutput;-><init>(Lorg/eclipse/jetty/server/AbstractHttpConnection;)V

    .line 1054
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 1063
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1072
    :goto_0
    return-void

    .line 1066
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->isIncluding()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/server/HttpOutput;->_generator:Lorg/eclipse/jetty/http/AbstractGenerator;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/AbstractGenerator;->isCommitted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1067
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->commitResponse(Z)V

    .line 1071
    :goto_1
    invoke-super {p0}, Lorg/eclipse/jetty/server/HttpOutput;->close()V

    goto :goto_0

    .line 1069
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->flushResponse()V

    goto :goto_1
.end method

.method public flush()V
    .locals 2

    .prologue
    .line 1082
    iget-object v0, p0, Lorg/eclipse/jetty/server/HttpOutput;->_generator:Lorg/eclipse/jetty/http/AbstractGenerator;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/AbstractGenerator;->isCommitted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1083
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->commitResponse(Z)V

    .line 1084
    :cond_0
    invoke-super {p0}, Lorg/eclipse/jetty/server/HttpOutput;->flush()V

    .line 1085
    return-void
.end method

.method public print(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1094
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1095
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1096
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getPrintWriter(Ljava/lang/String;)Ljava/io/PrintWriter;

    move-result-object v0

    .line 1097
    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1098
    return-void
.end method

.method public sendContent(Ljava/lang/Object;)V
    .locals 7

    .prologue
    const/4 v3, 0x1

    .line 1109
    const/4 v2, 0x0

    .line 1111
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1112
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1114
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/HttpOutput;->_generator:Lorg/eclipse/jetty/http/AbstractGenerator;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/AbstractGenerator;->isWritten()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1115
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "!empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1118
    :cond_1
    instance-of v0, p1, Lorg/eclipse/jetty/http/HttpContent;

    if-eqz v0, :cond_d

    .line 1120
    check-cast p1, Lorg/eclipse/jetty/http/HttpContent;

    .line 1121
    invoke-interface {p1}, Lorg/eclipse/jetty/http/HttpContent;->getContentType()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v1

    .line 1122
    if-eqz v1, :cond_2

    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_responseFields:Lorg/eclipse/jetty/http/HttpFields;

    sget-object v4, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v0, v4}, Lorg/eclipse/jetty/http/HttpFields;->containsKey(Lorg/eclipse/jetty/io/Buffer;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1124
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_response:Lorg/eclipse/jetty/server/Response;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Response;->getSetCharacterEncoding()Ljava/lang/String;

    move-result-object v4

    .line 1125
    if-nez v4, :cond_7

    .line 1126
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_responseFields:Lorg/eclipse/jetty/http/HttpFields;

    sget-object v4, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v0, v4, v1}, Lorg/eclipse/jetty/http/HttpFields;->add(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    .line 1147
    :cond_2
    :goto_0
    invoke-interface {p1}, Lorg/eclipse/jetty/http/HttpContent;->getContentLength()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_3

    .line 1148
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_responseFields:Lorg/eclipse/jetty/http/HttpFields;

    sget-object v1, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_LENGTH_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {p1}, Lorg/eclipse/jetty/http/HttpContent;->getContentLength()J

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5}, Lorg/eclipse/jetty/http/HttpFields;->putLongField(Lorg/eclipse/jetty/io/Buffer;J)V

    .line 1149
    :cond_3
    invoke-interface {p1}, Lorg/eclipse/jetty/http/HttpContent;->getLastModified()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    .line 1150
    invoke-interface {p1}, Lorg/eclipse/jetty/http/HttpContent;->getResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/resource/Resource;->lastModified()J

    move-result-wide v4

    .line 1151
    if-eqz v0, :cond_a

    .line 1153
    iget-object v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v1, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_responseFields:Lorg/eclipse/jetty/http/HttpFields;

    sget-object v4, Lorg/eclipse/jetty/http/HttpHeaders;->LAST_MODIFIED_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v1, v4, v0}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    .line 1161
    :cond_4
    :goto_1
    invoke-interface {p1}, Lorg/eclipse/jetty/http/HttpContent;->getETag()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    .line 1162
    if-eqz v0, :cond_5

    .line 1163
    iget-object v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v1, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_responseFields:Lorg/eclipse/jetty/http/HttpFields;

    sget-object v4, Lorg/eclipse/jetty/http/HttpHeaders;->ETAG_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v1, v4, v0}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    .line 1166
    :cond_5
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_connector:Lorg/eclipse/jetty/server/Connector;

    instance-of v0, v0, Lorg/eclipse/jetty/server/nio/NIOConnector;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_connector:Lorg/eclipse/jetty/server/Connector;

    check-cast v0, Lorg/eclipse/jetty/server/nio/NIOConnector;

    invoke-interface {v0}, Lorg/eclipse/jetty/server/nio/NIOConnector;->getUseDirectBuffers()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_connector:Lorg/eclipse/jetty/server/Connector;

    instance-of v0, v0, Lorg/eclipse/jetty/server/ssl/SslConnector;

    if-nez v0, :cond_b

    move v0, v3

    .line 1167
    :goto_2
    if-eqz v0, :cond_c

    invoke-interface {p1}, Lorg/eclipse/jetty/http/HttpContent;->getDirectBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    .line 1168
    :goto_3
    if-nez v0, :cond_6

    .line 1169
    invoke-interface {p1}, Lorg/eclipse/jetty/http/HttpContent;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    :cond_6
    move-object p1, v2

    .line 1179
    :goto_4
    instance-of v1, v0, Lorg/eclipse/jetty/io/Buffer;

    if-eqz v1, :cond_e

    .line 1181
    iget-object v1, p0, Lorg/eclipse/jetty/server/HttpOutput;->_generator:Lorg/eclipse/jetty/http/AbstractGenerator;

    check-cast v0, Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v1, v0, v3}, Lorg/eclipse/jetty/http/AbstractGenerator;->addContent(Lorg/eclipse/jetty/io/Buffer;Z)V

    .line 1182
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0, v3}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->commitResponse(Z)V

    .line 1213
    :goto_5
    return-void

    .line 1129
    :cond_7
    instance-of v0, v1, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    if-eqz v0, :cond_9

    move-object v0, v1

    .line 1131
    check-cast v0, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    invoke-virtual {v0, v4}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->getAssociate(Ljava/lang/Object;)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v0

    .line 1132
    if-eqz v0, :cond_8

    .line 1133
    iget-object v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v1, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_responseFields:Lorg/eclipse/jetty/http/HttpFields;

    sget-object v4, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v1, v4, v0}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    goto/16 :goto_0

    .line 1136
    :cond_8
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_responseFields:Lorg/eclipse/jetty/http/HttpFields;

    sget-object v5, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ";charset="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ";= "

    invoke-static {v4, v6}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->quoteIfNeeded(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1142
    :cond_9
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_responseFields:Lorg/eclipse/jetty/http/HttpFields;

    sget-object v5, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ";charset="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ";= "

    invoke-static {v4, v6}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->quoteIfNeeded(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1155
    :cond_a
    invoke-interface {p1}, Lorg/eclipse/jetty/http/HttpContent;->getResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1157
    const-wide/16 v0, -0x1

    cmp-long v0, v4, v0

    if-eqz v0, :cond_4

    .line 1158
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_responseFields:Lorg/eclipse/jetty/http/HttpFields;

    sget-object v1, Lorg/eclipse/jetty/http/HttpHeaders;->LAST_MODIFIED_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v0, v1, v4, v5}, Lorg/eclipse/jetty/http/HttpFields;->putDateField(Lorg/eclipse/jetty/io/Buffer;J)V

    goto/16 :goto_1

    .line 1166
    :cond_b
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 1167
    :cond_c
    invoke-interface {p1}, Lorg/eclipse/jetty/http/HttpContent;->getIndirectBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    goto/16 :goto_3

    .line 1171
    :cond_d
    instance-of v0, p1, Lorg/eclipse/jetty/util/resource/Resource;

    if-eqz v0, :cond_13

    .line 1173
    check-cast p1, Lorg/eclipse/jetty/util/resource/Resource;

    .line 1174
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_responseFields:Lorg/eclipse/jetty/http/HttpFields;

    sget-object v1, Lorg/eclipse/jetty/http/HttpHeaders;->LAST_MODIFIED_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {p1}, Lorg/eclipse/jetty/util/resource/Resource;->lastModified()J

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5}, Lorg/eclipse/jetty/http/HttpFields;->putDateField(Lorg/eclipse/jetty/io/Buffer;J)V

    .line 1175
    invoke-virtual {p1}, Lorg/eclipse/jetty/util/resource/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    goto/16 :goto_4

    .line 1184
    :cond_e
    instance-of v1, v0, Ljava/io/InputStream;

    if-eqz v1, :cond_12

    .line 1186
    check-cast v0, Ljava/io/InputStream;

    .line 1190
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/server/HttpOutput;->_generator:Lorg/eclipse/jetty/http/AbstractGenerator;

    invoke-virtual {v1}, Lorg/eclipse/jetty/http/AbstractGenerator;->prepareUncheckedAddContent()I

    move-result v1

    .line 1191
    iget-object v2, p0, Lorg/eclipse/jetty/server/HttpOutput;->_generator:Lorg/eclipse/jetty/http/AbstractGenerator;

    invoke-virtual {v2}, Lorg/eclipse/jetty/http/AbstractGenerator;->getUncheckedBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v2

    .line 1193
    invoke-interface {v2, v0, v1}, Lorg/eclipse/jetty/io/Buffer;->readFrom(Ljava/io/InputStream;I)I

    move-result v1

    .line 1195
    :goto_6
    if-ltz v1, :cond_f

    .line 1197
    iget-object v1, p0, Lorg/eclipse/jetty/server/HttpOutput;->_generator:Lorg/eclipse/jetty/http/AbstractGenerator;

    invoke-virtual {v1}, Lorg/eclipse/jetty/http/AbstractGenerator;->completeUncheckedAddContent()V

    .line 1198
    iget-object v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v1, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_out:Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->flush()V

    .line 1200
    iget-object v1, p0, Lorg/eclipse/jetty/server/HttpOutput;->_generator:Lorg/eclipse/jetty/http/AbstractGenerator;

    invoke-virtual {v1}, Lorg/eclipse/jetty/http/AbstractGenerator;->prepareUncheckedAddContent()I

    move-result v1

    .line 1201
    iget-object v2, p0, Lorg/eclipse/jetty/server/HttpOutput;->_generator:Lorg/eclipse/jetty/http/AbstractGenerator;

    invoke-virtual {v2}, Lorg/eclipse/jetty/http/AbstractGenerator;->getUncheckedBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v2

    .line 1202
    invoke-interface {v2, v0, v1}, Lorg/eclipse/jetty/io/Buffer;->readFrom(Ljava/io/InputStream;I)I

    move-result v1

    goto :goto_6

    .line 1204
    :cond_f
    iget-object v1, p0, Lorg/eclipse/jetty/server/HttpOutput;->_generator:Lorg/eclipse/jetty/http/AbstractGenerator;

    invoke-virtual {v1}, Lorg/eclipse/jetty/http/AbstractGenerator;->completeUncheckedAddContent()V

    .line 1205
    iget-object v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v1, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_out:Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1209
    if-eqz p1, :cond_10

    .line 1210
    invoke-virtual {p1}, Lorg/eclipse/jetty/util/resource/Resource;->release()V

    goto/16 :goto_5

    .line 1212
    :cond_10
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto/16 :goto_5

    .line 1209
    :catchall_0
    move-exception v1

    if-eqz p1, :cond_11

    .line 1210
    invoke-virtual {p1}, Lorg/eclipse/jetty/util/resource/Resource;->release()V

    .line 1212
    :goto_7
    throw v1

    :cond_11
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_7

    .line 1214
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown content type?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    move-object v0, p1

    move-object p1, v2

    goto/16 :goto_4
.end method

.method public sendResponse(Lorg/eclipse/jetty/io/Buffer;)V
    .locals 1

    .prologue
    .line 1103
    iget-object v0, p0, Lorg/eclipse/jetty/server/HttpOutput;->_generator:Lorg/eclipse/jetty/http/AbstractGenerator;

    check-cast v0, Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/http/HttpGenerator;->sendResponse(Lorg/eclipse/jetty/io/Buffer;)V

    .line 1104
    return-void
.end method
